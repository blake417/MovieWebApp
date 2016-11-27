require 'test_helper'

class WatchedMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get watched_movies_new_url
    assert_response :success
  end

  test "should get create" do
    get watched_movies_create_url
    assert_response :success
  end

end
