json.extract! task, :id, :spree_products_id, :notified, :sent, :recieved, :created_at, :updated_at
json.url task_url(task, format: :json)
