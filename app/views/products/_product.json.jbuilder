json.extract! product, :id, :nome, :preco, :image, :created_at, :updated_at
json.url product_url(product, format: :json)