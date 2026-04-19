defmodule RewovenCurriculumWeb.CourseHTML do
  use RewovenCurriculumWeb, :html
  import RewovenCurriculumWeb.Layouts, only: [curriculum_page: 1]

  embed_templates "course_html/*"
end
