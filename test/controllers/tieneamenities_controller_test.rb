require 'test_helper'

class TieneamenitiesControllerTest < ActionController::TestCase
  setup do
    @tieneamenity = tieneamenities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tieneamenities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tieneamenity" do
    assert_difference('Tieneamenity.count') do
      post :create, tieneamenity: { amenity_id: @tieneamenity.amenity_id, propiedad_id: @tieneamenity.propiedad_id }
    end

    assert_redirected_to tieneamenity_path(assigns(:tieneamenity))
  end

  test "should show tieneamenity" do
    get :show, id: @tieneamenity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tieneamenity
    assert_response :success
  end

  test "should update tieneamenity" do
    patch :update, id: @tieneamenity, tieneamenity: { amenity_id: @tieneamenity.amenity_id, propiedad_id: @tieneamenity.propiedad_id }
    assert_redirected_to tieneamenity_path(assigns(:tieneamenity))
  end

  test "should destroy tieneamenity" do
    assert_difference('Tieneamenity.count', -1) do
      delete :destroy, id: @tieneamenity
    end

    assert_redirected_to tieneamenities_path
  end
end
