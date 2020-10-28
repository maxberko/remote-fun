json.extract! game, :id, :title, :description, :url, :price, :paying, :score, :created_at, :updated_at
json.url game_url(game, format: :json)
