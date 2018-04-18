require 'test_helper'

class MainPageTest < ActionDispatch::IntegrationTest
  test "main page should exist" do
    get root_path
    assert_template 'static_pages/index'
    assert_template partial: 'layouts/_header'
    assert_select "[href=?]", root_path, count: 1
    assert_select "[href=?]", signup_path, count: 1
    assert_select "[href=?]", "#", count: 1
  end
end
