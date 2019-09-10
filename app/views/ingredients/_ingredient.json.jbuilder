json.extract! ingredient, :id, :name, :price, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
