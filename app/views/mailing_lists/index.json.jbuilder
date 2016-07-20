json.array!(@mailing_lists) do |mailing_list|
  json.extract! mailing_list, :id, :name, :email
  json.url mailing_list_url(mailing_list, format: :json)
end
