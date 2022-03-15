class Product < ApplicationRecord
    has_many :product_images, dependent: :destroy
    accepts_nested_attributes_for :product_images, allow_destroy: true
    validates :name, presence: true, length: {minimum: 2}
    validates :code, presence: true
    validates :images, file_size: { less_than: 1.megabytes }
end
