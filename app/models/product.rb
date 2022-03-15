class Product < ApplicationRecord
    has_many :product_images, dependent: :destroy
    accepts_nested_attributes_for :product_images, allow_destroy: true
    validates :title, presence: true, length: {minimum: 2}
    validates :body, presence: true
    validates :image, file_size: { less_than: 1.megabytes }
end
