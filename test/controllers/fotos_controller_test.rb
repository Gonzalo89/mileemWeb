require 'test_helper'

class FotosControllerTest < ActionController::TestCase
  setup do
    @foto = fotos(:foto1)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foto" do
    @propiedad = propiedads(:one)
    assert_difference('Foto.count') do
      post :create, foto: { nombre: @foto.nombre }, propiedad_id: @propiedad
    end

    assert_redirected_to propiedad_path(@propiedad)
  end
  
  test "no subir mas de 3 fotos" do
    @propiedad = propiedads(:two)
    assert_difference('Foto.count', 0) do
      post :create, foto: { nombre: @foto.nombre }, propiedad_id: @propiedad
    end

    assert_redirected_to propiedad_path(@propiedad)
  end

  test "should show foto" do
    get :show, id: @foto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foto
    assert_response :success
  end

  test "should update foto" do
    patch :update, id: @foto, foto: { nombre: @foto.nombre, propiedad_id: @foto.propiedad_id }
    assert_redirected_to foto_path(assigns(:foto))
  end

  test "should destroy foto" do
    propiedad = @foto.propiedad
    
    assert_difference('Foto.count', -1) do
      delete :destroy, id: @foto
    end

    assert_redirected_to propiedad_path(propiedad)
  end
end
