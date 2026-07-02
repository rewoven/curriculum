defmodule RewovenCurriculumWeb.CourseController do
  use RewovenCurriculumWeb, :controller

  alias RewovenCurriculum.Curriculum

  def show(conn, %{"course_slug" => slug}) do
    case Curriculum.course(slug, conn.assigns.locale) do
      nil ->
        conn
        |> put_status(404)
        |> render(:not_found, page_title: "Not found · Rewoven")

      course ->
        render(conn, :show, course: course, page_title: course.title <> " · Rewoven")
    end
  end
end
