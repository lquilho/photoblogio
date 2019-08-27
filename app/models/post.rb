class Post < ApplicationRecord
  validates :title, :image, :description, presence: true
end
