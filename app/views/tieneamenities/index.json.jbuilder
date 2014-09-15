json.array!(@tieneamenities) do |tieneamenity|
  json.extract! tieneamenity, :id, :propiedad_id, :amenity_id
  json.url tieneamenity_url(tieneamenity, format: :json)
end
