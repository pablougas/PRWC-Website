json.array!(@events) do |event|
  json.extract! event, :id, :title, :date, :description, :link
  json.url event_url(event, format: :json)
end
