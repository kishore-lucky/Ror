json.extract! task, :id, :Name, :Due_date, :Status, :created_at, :updated_at
json.url task_url(task, format: :json)
