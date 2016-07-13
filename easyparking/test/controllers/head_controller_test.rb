require 'test_helper'

class HeadControllerTest < ActionDispatch::IntegrationTest
  test "should get termycond" do
    get head_termycond_url
    assert_response :success
  end

end
