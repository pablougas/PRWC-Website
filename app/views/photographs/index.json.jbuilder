json.array!(@photographs) do |photograph|
  json.extract! photograph, :id, :name, :image, :user_id
  json.url photograph_url(photograph, format: :json)
end
