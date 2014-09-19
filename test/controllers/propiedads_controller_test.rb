require 'test_helper'

class PropiedadsControllerTest < ActionController::TestCase
  setup do
    @propiedad = propiedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propiedads)
  end

  test "should get new" do
    @user = users(:one)
    sign_in @user
    get :new
    assert_response :success
  end
  
  test "should get new sin autenticar" do
    get :new
    assert_response :redirect
  end

  test "should create propiedad" do
    assert_difference('Propiedad.count') do
      post :create, propiedad: { barrio_id: @propiedad.barrio_id, direccion: @propiedad.direccion,
        numero: @propiedad.numero, descripcion: @propiedad.descripcion, moneda_id: @propiedad.moneda_id,
        precio: @propiedad.precio, operacion_id: @propiedad.operacion_id}
    end

    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should show propiedad" do
    get :show, id: @propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propiedad
    assert_response :success
  end

  test "should update propiedad" do
    patch :update, id: @propiedad, propiedad: { barrio_id: @propiedad.barrio_id, direccion: @propiedad.direccion }
    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should destroy propiedad" do
    assert_difference('Propiedad.count', -1) do
      delete :destroy, id: @propiedad
    end

    assert_redirected_to propiedads_path
  end

  test "errores en el formulario new, debe mostrar igual amenities" do
    @user = users(:one)
    sign_in @user
    post :new
    
    assert_select '#tieneamenities_Comedor', 1
  end

end
