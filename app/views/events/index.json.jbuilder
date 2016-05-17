json.array!(@events) do |event|
  json.extract! event, :id, :title, :text, :beginAt
  json.url event_url(event, format: :json)
end
