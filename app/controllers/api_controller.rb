class ApiController < ApplicationController
  def mostrarJson
    @propiedads = Propiedad.all
    render "/propiedads/index.json"
  end
end
