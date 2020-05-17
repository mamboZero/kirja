json.extract! followup, :id, :status, :project_name, :contact_name, :email, :phone, :contact_date, :followup_date, :notes, :created_at, :updated_at
json.url followup_url(followup, format: :json)
