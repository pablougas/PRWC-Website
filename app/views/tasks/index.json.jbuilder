json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :title, :content, :deadline, :completed
  json.url task_url(task, format: :json)
end
