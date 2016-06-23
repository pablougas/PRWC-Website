json.array!(@minutes) do |minute|
  json.extract! minute, :id, :title, :location, :street, :city, :state, :zip, :date
  json.url minute_url(minute, format: :json)
end
