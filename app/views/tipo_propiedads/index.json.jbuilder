json.array!(@tipo_propiedads) do |tipo_propiedad|
  json.extract! tipo_propiedad, :id, :nombre
  json.url tipo_propiedad_url(tipo_propiedad, format: :json)
end
