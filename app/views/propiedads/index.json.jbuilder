json.array!(@propiedads) do |propiedad|
  json.extract! propiedad, :id, :direccion, :precio, :barrio_id, :superficie, :ambientes, :tipo_propiedad_id
  json.url propiedad_url(propiedad, format: :json)
end
