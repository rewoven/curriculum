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
  end
end
