json.array!(@newsletter_lists) do |newsletter_list|
  json.extract! newsletter_list, :id, :name, :email, :added
  json.url newsletter_list_url(newsletter_list, format: :json)
end
