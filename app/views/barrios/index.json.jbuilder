json.array!(@barrios) do |barrio|
  json.extract! barrio, :id, :nombre
  json.url barrio_url(barrio, format: :json)
end
