defmodule RewovenCurriculumWeb.LessonController do
  use RewovenCurriculumWeb, :controller

  alias RewovenCurriculum.{Curriculum, Lessons}

  def show(conn, %{"course_slug" => course_slug, "lesson_slug" => lesson_slug}) do
    case Curriculum.lesson(course_slug, lesson_slug) do
      nil ->
        conn |> put_status(404) |> text("Lesson not found")

      lesson ->
        {prev, next} = Curriculum.siblings(course_slug, lesson_slug)
        content = Lessons.content(course_slug, lesson_slug)

        render(conn, :show,
          lesson: lesson,
          content: content,
          prev: prev,
          next: next
        )
    end
  end
end
