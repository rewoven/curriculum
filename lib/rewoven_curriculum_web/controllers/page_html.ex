defmodule RewovenCurriculumWeb.PageHTML do
  use RewovenCurriculumWeb, :html
  import RewovenCurriculumWeb.Layouts, only: [curriculum_page: 1]

  embed_templates "page_html/*"
end
