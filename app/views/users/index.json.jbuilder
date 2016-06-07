json.array!(@users) do |user|
  json.extract! user, :id, :name, :admin, :street, :city, :npa, :canton
  json.url user_url(user, format: :json)
end
