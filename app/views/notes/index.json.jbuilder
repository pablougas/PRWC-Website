json.array!(@notes) do |note|
  json.extract! note, :id, :task_id, :user_id, :note
  json.url note_url(note, format: :json)
end
