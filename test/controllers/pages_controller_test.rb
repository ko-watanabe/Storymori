require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get getPage" do
    get pages_getPage_url
    assert_response :success
  end

end
