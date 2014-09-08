require 'test_helper'

class TipoPropiedadsControllerTest < ActionController::TestCase
  setup do
    @tipo_propiedad = tipo_propiedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_propiedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_propiedad" do
    assert_difference('TipoPropiedad.count') do
      post :create, tipo_propiedad: { nombre: @tipo_propiedad.nombre }
    end

    assert_redirected_to tipo_propiedad_path(assigns(:tipo_propiedad))
  end

  test "should show tipo_propiedad" do
    get :show, id: @tipo_propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_propiedad
    assert_response :success
  end

  test "should update tipo_propiedad" do
    patch :update, id: @tipo_propiedad, tipo_propiedad: { nombre: @tipo_propiedad.nombre }
    assert_redirected_to tipo_propiedad_path(assigns(:tipo_propiedad))
  end

  test "should destroy tipo_propiedad" do
    assert_difference('TipoPropiedad.count', -1) do
      delete :destroy, id: @tipo_propiedad
    end

    assert_redirected_to tipo_propiedads_path
  end
end
