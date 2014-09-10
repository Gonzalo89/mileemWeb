json.array!(@operacions) do |operacion|
  json.extract! operacion, :id, :tipo
  json.url operacion_url(operacion, format: :json)
end
