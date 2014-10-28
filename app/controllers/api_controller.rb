class ApiController < ApplicationController
  def mostrarJson
    @propiedads = Propiedad.all
    render "/propiedads/filtro.json"
  end
end
