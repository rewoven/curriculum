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

  @doc "Site chrome — nav, footer, signed-in user info."
  attr :user, :any, default: nil
  slot :inner_block, required: true

  def curriculum_page(assigns) do
    ~H"""
    <nav>
      <div class="container nav-inner">
        <a href="/" class="nav-logo">
          <img src="https://rewovenapp.com/assets/logo.png" alt="Rewoven" />
          <span>Rewoven Curriculum</span>
        </a>
        <ul class="nav-links">
          <li><a href="https://rewovenapp.com">Home</a></li>
          <li><a href="https://quiz.rewovenapp.com">Quiz</a></li>
          <li><a href="https://premium.rewovenapp.com/account">Account</a></li>
          <%= if @user do %>
            <li><span class="user-pill">⭐ Premium</span></li>
          <% end %>
        </ul>
      </div>
    </nav>

    <main>
      {render_slot(@inner_block)}
    </main>

    <footer>
      <div class="container">
        <p>A <a href="https://rewovenapp.com">Rewoven</a> service · <a href="https://premium.rewovenapp.com/account">Manage subscription</a></p>
      </div>
    </footer>
    """
  end

  attr :flash, :map, required: true
  attr :id, :string, default: "flash-group"
  def flash_group(assigns), do: ~H"<div id={@id}></div>"
end
