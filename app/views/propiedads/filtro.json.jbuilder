json.array!(@propiedades) do |propiedad|

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
  json.latitude propiedad.latitude
  json.longitude propiedad.longitude
  json.tipo_publicacion propiedad.tipo_publicacion.nombre
  json.tipo_publicacion_id propiedad.tipo_publicacion.id
  json.fecha_publicacion propiedad.fecha_publicacion
  json.fecha_finalizacion propiedad.fecha_finalizacion
  json.user propiedad.user
  
end