require 'test_helper'

class SortStringControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sort_string_index_url
    assert_response :success
  end

end
