json.extract! job, :id, :user_id, :company, :adress, :created_at, :updated_at
json.url job_url(job, format: :json)
