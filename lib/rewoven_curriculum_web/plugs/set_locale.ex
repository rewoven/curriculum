defmodule RewovenCurriculumWeb.Plugs.SetLocale do
  @moduledoc """
  Resolves the request locale: `?lang=xx` param (persisted to the session)
  → session → default ("en"). Assigns `:locale` and `:dir`.
  """

  import Plug.Conn
  alias RewovenCurriculum.I18n

  def init(opts), do: opts

  def call(conn, _opts) do
    param = conn.params["lang"]
    session = get_session(conn, :locale)

    locale =
      cond do
        is_binary(param) and I18n.valid?(param) -> param
        is_binary(session) and I18n.valid?(session) -> session
        true -> I18n.default()
      end

    conn
    |> put_session(:locale, locale)
    |> assign(:locale, locale)
    |> assign(:dir, I18n.dir(locale))
  end
end
