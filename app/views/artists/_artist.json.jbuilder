json.extract! artist, :id, :first_name, :last_name, :date_of_birth, :notes, :avatar, :created_at, :updated_at
json.url artist_url(artist, format: :json)
json.notes artist.notes.to_s
json.avatar url_for(artist.avatar)
