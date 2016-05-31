json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :desc, :vineyard, :grape, :image
  json.url wine_url(wine, format: :json)
end
