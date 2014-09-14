json.array!(@amenities) do |amenity|
  json.extract! amenity, :id, :nombre
  json.url amenity_url(amenity, format: :json)
end
