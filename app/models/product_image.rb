class ProductImage < ApplicationRecord
    belongs_to :product
    mount_uploader :images, ImageUploader
    validates :name, presence: true, length: {minimum: 2}
    validates :code, presence: true
    validates :images, file_size: { less_than: 1.megabytes }
end
