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
    assert propiedad.save
  end

end

