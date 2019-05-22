require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get GetStories" do
    get stories_GetStories_url
    assert_response :success
  end

end
