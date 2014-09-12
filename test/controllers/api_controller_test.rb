require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get mostrar" do
    get :mostrar
    assert_response :success
  end

end
