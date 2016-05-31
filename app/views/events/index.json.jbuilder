json.array!(@events) do |event|
  json.extract! event, :id, :title, :text, :beginAt, :image
  json.url event_url(event, format: :json)
end
