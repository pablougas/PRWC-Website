json.array!(@projects) do |project|
  json.extract! project, :id, :user_id, :title, :description, :complete, :deadline
  json.url project_url(project, format: :json)
end
