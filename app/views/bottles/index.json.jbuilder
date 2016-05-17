json.array!(@bottles) do |bottle|
  json.extract! bottle, :id, :price, :stock, :capacity
  json.url bottle_url(bottle, format: :json)
end
