defmodule RewovenCurriculumWeb.Layouts do
  @moduledoc """
  Layouts and shared components for the curriculum site.
  """
  use RewovenCurriculumWeb, :html

  embed_templates "layouts/*"

  attr :flash, :map, required: true
  slot :inner_block, required: true

  def app(assigns) do
    ~H"""
    {render_slot(@inner_block)}
    """
  end

  @doc "Site chrome — nav, footer, language switcher, signed-in user info."
  attr :user, :any, default: nil
  attr :locale, :string, default: "en"
  slot :inner_block, required: true

  def curriculum_page(assigns) do
    ~H"""
    <nav>
      <div class="container nav-inner">
        <a href="https://rewovenapp.com" class="nav-logo">
          <img src="https://rewovenapp.com/assets/logo.png" alt="Rewoven" />
          <span>Rewoven</span>
        </a>
        <ul class="nav-links">
          <li><a href="https://rewovenapp.com">{t(@locale, :nav_home)}</a></li>
          <li><a href="https://quiz.rewovenapp.com">{t(@locale, :nav_quiz)}</a></li>
          <li><a href="https://premium.rewovenapp.com/account">{t(@locale, :nav_account)}</a></li>
          <%= if @user do %>
            <li><span class="user-pill">⭐ Premium</span></li>
          <% end %>
          <li>
            <select
              class="lang-select"
              aria-label={t(@locale, :language_label)}
              onchange="location.search='?lang='+this.value"
            >
              <%= for loc <- RewovenCurriculum.I18n.locales() do %>
                <option value={loc.code} selected={loc.code == @locale}>{loc.name}</option>
              <% end %>
            </select>
          </li>
        </ul>
      </div>
    </nav>

    <main>
      {render_slot(@inner_block)}
    </main>

    <footer>
      <div class="container">
        <p>
          <a href="https://rewovenapp.com">Rewoven</a>
          {t(@locale, :footer_service)} ·
          <a href="https://premium.rewovenapp.com/account">{t(@locale, :manage_subscription)}</a>
        </p>
      </div>
    </footer>
    """
  end

  defp t(locale, key), do: RewovenCurriculum.I18n.t(locale, key)

  attr :flash, :map, required: true
  attr :id, :string, default: "flash-group"
  def flash_group(assigns), do: ~H"<div id={@id}></div>"
end
