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
    get :new
    assert_response :success
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

  test "propiedad con precio muy alto" do
    @propiedad = propiedads(:propiedadPrecioMuyAlto)

    assert @propiedad.save, "error al guardar prop con precio muy alto"
  end

  test "propiedad piso vacio" do
    @propiedad = propiedads(:propiedadPisoVacio)

    assert @propiedad.save
  end

  test "propiedad piso invalido" do
    @propiedad = propiedads(:propiedadPisoInvalido)

    assert_not @propiedad.save
  end
  
  test "mostrar mapa en edit propiedad" do
    get :edit, id: @propiedad
    assert_select '#mapa', 1
  end
  
end
