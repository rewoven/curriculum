defmodule RewovenCurriculumWeb.PageControllerTest do
  use RewovenCurriculumWeb.ConnCase

  test "GET / renders the curriculum landing page", %{conn: conn} do
    conn = get(conn, ~p"/")
    html = html_response(conn, 200)
    assert html =~ "The Rewoven"
    assert html =~ "8 courses"
    assert html =~ "32 lessons"
    assert html =~ "The People Behind Our Clothes"
    assert html =~ "Animals &amp; Fashion"
    assert html =~ ~s(dir="ltr")
  end

  test "GET /?lang=ar renders Arabic with RTL and persists the locale", %{conn: conn} do
    conn = get(conn, ~p"/?lang=ar")
    html = html_response(conn, 200)
    assert html =~ ~s(lang="ar")
    assert html =~ ~s(dir="rtl")
    # translated course title from the Arabic content module
    assert html =~ "الاقتصاد الدائري"
    assert get_session(conn, :locale) == "ar"
  end

  test "GET / with an invalid lang falls back to English", %{conn: conn} do
    conn = get(conn, ~p"/?lang=zz")
    html = html_response(conn, 200)
    assert html =~ ~s(lang="en")
    assert get_session(conn, :locale) == "en"
  end

  test "GET /sitemap.xml lists all courses and lessons", %{conn: conn} do
    conn = get(conn, ~p"/sitemap.xml")
    body = response(conn, 200)
    assert response_content_type(conn, :xml)
    assert body =~ "https://curriculum.rewovenapp.com/courses/animals-and-fashion/vegan-fashion"
    # 1 home + 8 courses + 32 lessons
    assert length(String.split(body, "<loc>")) - 1 == 41
  end

  test "GET /courses/:slug renders translated metadata for ar", %{conn: conn} do
    conn = get(conn, ~p"/courses/fashion?lang=ar")
    html = html_response(conn, 200)
    assert html =~ "الموضة"
    assert html =~ ~s(dir="rtl")
  end

  test "unknown course renders the styled 404", %{conn: conn} do
    conn = get(conn, ~p"/courses/not-a-course")
    assert html_response(conn, 404) =~ "404"
  end
end
