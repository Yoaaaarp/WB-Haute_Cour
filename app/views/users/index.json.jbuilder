json.array!(@users) do |user|
  json.extract! user, :id, :name, :pwd, :admin, :street, :city, :NPA, :canton
  json.url user_url(user, format: :json)
end
