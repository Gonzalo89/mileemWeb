require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get mostrarJson" do
    get :mostrarJson
    assert_response :success
  end

end
