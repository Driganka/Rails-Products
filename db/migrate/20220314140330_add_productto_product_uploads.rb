class AddProducttoProductUploads < ActiveRecord::Migration[7.0]
  def change
    add_reference :product_images, :product, index: true
  end
end
