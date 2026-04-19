defmodule RewovenCurriculumWeb.LessonHTML do
  use RewovenCurriculumWeb, :html
  import RewovenCurriculumWeb.Layouts, only: [curriculum_page: 1]

  embed_templates "lesson_html/*"
end
