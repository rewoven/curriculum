defmodule RewovenCurriculum.Supabase do
  @moduledoc """
  Thin wrapper around the Supabase REST API for verifying JWTs and
  reading the user's premium-status field. Mirrors the same approach as
  the rewoven_premium app — single source of truth is `profiles.is_premium`.
  """

  defp base_url, do: Application.fetch_env!(:rewoven_curriculum, :supabase_url)
  defp anon_key, do: Application.fetch_env!(:rewoven_curriculum, :supabase_anon_key)

  @doc "Verify a Supabase user JWT and return the user object."
  def verify_jwt(jwt) when is_binary(jwt) do
    Req.get(base_url() <> "/auth/v1/user",
      headers: [
        {"apikey", anon_key()},
        {"authorization", "Bearer " <> jwt}
      ]
    )
    |> case do
      {:ok, %{status: 200, body: body}} -> {:ok, body}
      {:ok, %{status: s, body: b}} -> {:error, {s, b}}
      err -> err
    end
  end

  @doc "Fetch a user's profile (used for premium status check)."
  def get_profile(user_id, jwt) do
    Req.get(base_url() <> "/rest/v1/profiles",
      headers: [
        {"apikey", anon_key()},
        {"authorization", "Bearer " <> jwt}
      ],
      params: [
        select: "id,is_premium,subscription_status,premium_until",
        id: "eq." <> user_id
      ]
    )
    |> case do
      {:ok, %{status: 200, body: [profile | _]}} -> {:ok, profile}
      {:ok, %{status: 200, body: []}} -> {:error, :not_found}
      err -> err
    end
  end
end
