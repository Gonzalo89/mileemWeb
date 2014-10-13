require 'test_helper'

class PropiedadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "no se debe grabar sin direccion" do
    propiedad = Propiedad.new
    assert_not propiedad.save, "La propiedad debe tener una direccion"
  end

  test "grabado correcto" do
    propiedad = propiedads(:one)
    assert propiedad.save
  end

  test "validacion US001" do
    propiedad = propiedads(:validacionUS001)
    assert propiedad.save, @propiedad.inspect
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
  
  test "propiedad fecha dia actual" do
  
    @propiedad = propiedads(:propiedadFecha)

    assert @propiedad.save, @propiedad.errors.inspect
  end

end

