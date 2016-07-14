require 'test_helper'

class ParkingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parking_index_url
    assert_response :success
  end

  test "should get detail" do
    get parking_detail_url
    assert_response :success
  end

end
