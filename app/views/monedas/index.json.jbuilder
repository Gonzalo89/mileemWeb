json.array!(@monedas) do |moneda|
  json.extract! moneda, :id, :nombre
  json.url moneda_url(moneda, format: :json)
end
