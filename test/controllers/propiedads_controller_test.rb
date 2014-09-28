require 'test_helper'

class PropiedadsControllerTest < ActionController::TestCase
  setup do
    @propiedad = propiedads(:one)
  end

  test "should get index" do
    @user = users(:one)
    sign_in @user
    
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
    @user = users(:one)
    sign_in @user
    
    assert_equal @propiedad.user.id, @user.id, "Los usuarios no son iguales"
    
    assert_difference('Propiedad.count') do
      post :create, propiedad: { barrio_id: @propiedad.barrio_id, direccion: @propiedad.direccion,
        numero: @propiedad.numero, descripcion: @propiedad.descripcion, moneda_id: @propiedad.moneda_id,
        precio: @propiedad.precio, operacion_id: @propiedad.operacion_id, user_id: @user.id}
    end

    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should show propiedad" do    
    get :show, id: @propiedad
    assert_response :success
  end

  test "should get edit" do    
    @user = users(:one)
    sign_in @user
    
    get :edit, id: @propiedad
    assert_response :success
  end

  test "should update propiedad" do
    @user = @propiedad.user
    sign_in @user
    
    assert_equal @propiedad.user.id, @user.id, "Los usuarios no son iguales"
    
    patch :update, id: @propiedad, propiedad: { barrio_id: @propiedad.barrio_id, direccion: @propiedad.direccion }
    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should destroy propiedad" do
    @user = @propiedad.user
    sign_in @user
    
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
  
  test "edicion de propiedad por usuario no dueño" do
    @propiedad = propiedads(:one)
    @user = users(:two)
    sign_in @user
    
    assert_not_equal @propiedad.user.id, @user.id, "Los usuarios son iguales"
    get :edit, id: @propiedad
    assert_redirected_to propiedads_path    
  end
  
  test "mostrar solo propiedades del usuario logueado" do 
    @user = users(:one)
    sign_in @user
    
    cantPropTotal = Propiedad.count
    
    get :index
    assert_select '.nombreUsuario', cantPropTotal-1
  end

end
