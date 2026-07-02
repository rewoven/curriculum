defmodule RewovenCurriculumWeb.LessonController do
  use RewovenCurriculumWeb, :controller

  alias RewovenCurriculum.{Curriculum, Lessons}

  def show(conn, %{"course_slug" => course_slug, "lesson_slug" => lesson_slug}) do
    locale = conn.assigns.locale

    case Curriculum.lesson(course_slug, lesson_slug, locale) do
      nil ->
        conn
        |> put_status(404)
        |> put_view(html: RewovenCurriculumWeb.CourseHTML)
        |> render(:not_found, page_title: "Not found · Rewoven")

      lesson ->
        {prev, next} = Curriculum.siblings(course_slug, lesson_slug, locale)
        content = Lessons.content(course_slug, lesson_slug, locale)

        render(conn, :show,
          lesson: lesson,
          content: content,
          prev: prev,
          next: next,
          page_title: lesson.title <> " · " <> lesson.course.title
        )
    end
  end
end
