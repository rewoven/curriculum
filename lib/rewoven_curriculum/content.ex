defmodule RewovenCurriculum.Content do
  @moduledoc """
  Registry for translated curriculum content.

  Each supported locale has a `RewovenCurriculum.Content.<Locale>` module
  holding translated lesson maps (same shape as `RewovenCurriculum.Lessons`)
  and translated course metadata (titles, taglines, lesson titles/summaries).

  Everything falls back to English when a translation is missing, so a
  partially-translated locale still renders every page.
  """

  alias RewovenCurriculum.Content

  @modules %{
    "ar" => Content.Ar,
    "hi" => Content.Hi,
    "fr" => Content.Fr,
    "es" => Content.Es,
    "tl" => Content.Tl
  }

  @doc "Translated lesson content, or nil when not translated."
  def lesson("en", _course_slug, _lesson_slug), do: nil

  def lesson(locale, course_slug, lesson_slug) do
    case Map.get(@modules, locale) do
      nil -> nil
      mod -> Map.get(mod.lessons(), {course_slug, lesson_slug})
    end
  end

  @doc "Translated course metadata (title/tagline + per-lesson title/summary), or nil."
  def course_meta("en", _course_slug), do: nil

  def course_meta(locale, course_slug) do
    case Map.get(@modules, locale) do
      nil -> nil
      mod -> Map.get(mod.courses_meta(), course_slug)
    end
  end
end
