defmodule RewovenCurriculumWeb.CourseController do
  use RewovenCurriculumWeb, :controller

  alias RewovenCurriculum.Curriculum

  def show(conn, %{"course_slug" => slug}) do
    case Curriculum.course(slug) do
      nil -> conn |> put_status(404) |> text("Course not found")
      course -> render(conn, :show, course: course)
    end
  end
end
