defmodule RewovenCurriculumWeb.PageController do
  use RewovenCurriculumWeb, :controller

  alias RewovenCurriculum.Curriculum

  @doc "Public landing page — lists all 8 courses."
  def home(conn, _params) do
    render(conn, :home,
      courses: Curriculum.courses(),
      total_lessons: Curriculum.total_lessons()
    )
  end
end
