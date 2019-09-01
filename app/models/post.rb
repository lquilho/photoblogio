class Post < ApplicationRecord
  validates :title, presence: true
  has_many :post_photos, dependent: :destroy
end
