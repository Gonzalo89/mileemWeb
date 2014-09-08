require 'test_helper'

class BarrioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "no se debe grabar sin nombre" do
    barrio = Barrio.new
    assert_not barrio.save, "El barrio debe tener un nombre"
  end

  test "grabado correcto" do
    barrio = barrios(:one)
    assert barrio.save
  end
end
