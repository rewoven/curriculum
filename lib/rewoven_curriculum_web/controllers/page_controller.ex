defmodule RewovenCurriculumWeb.PageController do
  use RewovenCurriculumWeb, :controller

  alias RewovenCurriculum.Curriculum

  @doc "Public landing page — lists all 8 courses."
  def home(conn, _params) do
    render(conn, :home,
      courses: Curriculum.courses(conn.assigns.locale),
      total_lessons: Curriculum.total_lessons()
    )
  end

  @doc "Plain XML sitemap of all courses and lessons."
  def sitemap(conn, _params) do
    base = "https://curriculum.rewovenapp.com"

    urls =
      [base <> "/"] ++
        Enum.flat_map(Curriculum.courses(), fn course ->
          [base <> "/courses/" <> course.slug] ++
            Enum.map(course.lessons, fn lesson ->
              base <> "/courses/" <> course.slug <> "/" <> lesson.slug
            end)
        end)

    body =
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" <>
        "<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n" <>
        Enum.map_join(urls, "\n", fn u -> "  <url><loc>#{u}</loc></url>" end) <>
        "\n</urlset>\n"

    conn
    |> put_resp_content_type("application/xml")
    |> send_resp(200, body)
  end
end
