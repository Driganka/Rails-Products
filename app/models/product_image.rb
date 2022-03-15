class ProductImage < ApplicationRecord
    belongs_to :product
    mount_uploader :images, ImageUploader
end
