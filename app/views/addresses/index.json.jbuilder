json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :NPA, :canton, :country
  json.url address_url(address, format: :json)
end
