json.extract! patient, :id, :name, :email, :birth_date, :created_at, :updated_at
json.url patient_url(patient, format: :json)
