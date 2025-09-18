json.extract! artwork, :id, :artist_id, :title, :description, :created_on, :image, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
json.description artwork.description.to_s
json.image url_for(artwork.image)
