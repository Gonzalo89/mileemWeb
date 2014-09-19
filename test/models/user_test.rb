require 'test_helper'

class UserTest < ActiveSupport::TestCase
# test "the truth" do
#   assert true
# end

test "no grabar por falta de nombre" do
  user = users(:userSinNombre)
  assert_not user.save, "El usuario debe tener nombre"
end

test "no grabar por falta de telefono" do
  user = users(:userSinTelefono)
  assert_not user.save, "El usuario debe tener telefono"
end

end
