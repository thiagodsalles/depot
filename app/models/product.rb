class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, length: { minimum: 10, message: 'minimum is 10 characters' }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
