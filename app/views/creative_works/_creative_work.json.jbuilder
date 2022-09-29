json.extract! creative_work, :id, :name, :description, :price, :artist_id, :created_at, :updated_at
json.url creative_work_url(creative_work, format: :json)
