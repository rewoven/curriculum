defmodule RewovenCurriculumWeb.Router do
  use RewovenCurriculumWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {RewovenCurriculumWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug RewovenCurriculumWeb.Plugs.SetLocale
  end

  # The index page is public (it advertises what's behind the paywall).
  scope "/", RewovenCurriculumWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/sitemap.xml", PageController, :sitemap
  end

  # Premium-only — server-side gate. Without a valid Supabase JWT cookie
  # AND profiles.is_premium = true, the request redirects to
  # premium.rewovenapp.com BEFORE any lesson HTML is rendered.
  scope "/", RewovenCurriculumWeb do
    pipe_through [:browser, RewovenCurriculumWeb.Plugs.RequirePremium]

    get "/courses/:course_slug", CourseController, :show
    get "/courses/:course_slug/:lesson_slug", LessonController, :show
  end
end
