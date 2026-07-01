defmodule RewovenCurriculumWeb.Plugs.RequirePremium do
  @moduledoc """
  Server-side premium gate.

  Strategy: read the Supabase JWT from a cookie (set by the Supabase JS
  SDK on premium.rewovenapp.com / rewovenapp.com — the cookie is shared
  across `*.rewovenapp.com`). Verify it server-side, look up the
  `profiles.is_premium` field, and either let the request through (with
  `:current_user` and `:current_profile` assigned) or redirect to the
  premium subscription page.

  This is stronger than client-side gating: the lesson HTML is never
  shipped to the browser if the user isn't premium. They literally
  cannot view the source.
  """

  import Plug.Conn
  alias RewovenCurriculum.Supabase

  @premium_url "https://premium.rewovenapp.com"

  def init(opts), do: opts

  def call(conn, _opts) do
    if Application.get_env(:rewoven_curriculum, :require_premium, false) do
      enforce_premium(conn)
    else
      # Soft-launch / free-for-everyone mode. Still try to attach the
      # signed-in user for personalization, but don't block anyone.
      try_attach_user(conn)
    end
  end

  defp enforce_premium(conn) do
    with {:ok, jwt} <- get_jwt(conn),
         {:ok, user} <- Supabase.verify_jwt(jwt),
         {:ok, profile} <- Supabase.get_profile(user["id"], jwt),
         true <- profile["is_premium"] == true do
      conn
      |> assign(:current_user, user)
      |> assign(:current_profile, profile)
    else
      _ -> redirect_to_premium(conn)
    end
  end

  defp try_attach_user(conn) do
    case get_jwt(conn) do
      {:ok, jwt} ->
        case Supabase.verify_jwt(jwt) do
          {:ok, user} -> assign(conn, :current_user, user)
          _ -> conn
        end

      _ ->
        conn
    end
  end

  defp redirect_to_premium(conn) do
    conn
    |> put_resp_header("location", @premium_url)
    |> resp(302, "")
    |> halt()
  end

  # Supabase JS stashes the access token in a cookie named
  # "sb-<project-ref>-auth-token" — the body is JSON like
  # ["<access_token>","<refresh_token>",null,null,null] (sometimes
  # base64-prefixed).
  defp get_jwt(conn) do
    cookies = fetch_cookies(conn).req_cookies

    token =
      Enum.find_value(cookies, fn {name, val} ->
        if String.starts_with?(name, "sb-") and String.ends_with?(name, "-auth-token") do
          extract_access_token(val)
        end
      end)

    if token, do: {:ok, token}, else: {:error, :no_token}
  end

  defp extract_access_token(val) do
    val =
      if String.starts_with?(val, "base64-") do
        case Base.decode64(String.trim_leading(val, "base64-"), padding: false) do
          {:ok, decoded} -> decoded
          _ -> val
        end
      else
        val
      end

    case Jason.decode(val) do
      {:ok, [token | _]} when is_binary(token) -> token
      {:ok, %{"access_token" => token}} -> token
      _ -> nil
    end
  end
end
