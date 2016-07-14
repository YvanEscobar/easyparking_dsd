require 'test_helper'

<<<<<<< HEAD
class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
=======
class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get details" do
    get home_details_url
>>>>>>> 6c6557cb69dd582825d0dda835aa8e6311543a97
    assert_response :success
  end

end
