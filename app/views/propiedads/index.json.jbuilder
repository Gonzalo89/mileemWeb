json.array!(@propiedads) do |propiedad|
  json.extract! propiedad, :id, :direccion, :barrio_id
  json.url propiedad_url(propiedad, format: :json)
end
