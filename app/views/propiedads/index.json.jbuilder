json.array!(@propiedads) do |propiedad|
  json.extract! propiedad, :id, :direccion, :numero, :piso, :departamento,
  :descripcion, :antiguedad, :precio, :superficie, :ambientes, :dormitorios,
  :expensas
  json.url propiedad_url(propiedad, format: :json)
  json.moneda propiedad.moneda.nombre
  json.barrio propiedad.barrio.nombre
  json.operacion propiedad.operacion.tipo
  json.tipo_propiedad propiedad.tipo_propiedad.nombre
  json.fotos propiedad.fotos
  json.amenities propiedad.amenities
  json.superficie_nc propiedad.superficie_nc
  
end
