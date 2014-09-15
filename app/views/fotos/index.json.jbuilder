json.array!(@fotos) do |foto|
  json.extract! foto, :id, :nombre, :propiedad_id
  json.url foto_url(foto, format: :json)
end
