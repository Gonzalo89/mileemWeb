class ApiController < ApplicationController
  def mostrar
    @propiedads = Propiedad.all
    render plain: "OKKKKKKKApiController"
  end
end
