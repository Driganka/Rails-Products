json.extract! product_image, :id, :name, :code, :images, :created_at, :updated_at
json.url product_image_url(product_image, format: :json)
