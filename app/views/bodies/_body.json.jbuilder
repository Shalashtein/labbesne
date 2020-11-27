json.extract! body, :id, :name, :created_at, :updated_at
json.url body_url(body, format: :json)
