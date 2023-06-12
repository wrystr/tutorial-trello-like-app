json.extract! card, :id, :project_id, :title, :body, :json_attributes, :created_at, :updated_at
json.url card_url(card, format: :json)
