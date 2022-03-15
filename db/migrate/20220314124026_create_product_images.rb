class CreateProductImages < ActiveRecord::Migration[7.0]
  def change
    create_table :product_images do |t|
      t.string :name
      t.string :code
      t.string :images

      t.timestamps
    end
  end
end
