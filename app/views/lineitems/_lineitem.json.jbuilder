json.extract! lineitem, :id, :product, :cart, :created_at, :updated_at
json.url lineitem_url(lineitem, format: :json)
