require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get perfil" do
    get home_perfil_url
    assert_response :success
  end

end
