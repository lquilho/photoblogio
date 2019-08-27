class Post < ApplicationRecord
  validates :title, :image, presence: true

  mount_uploader :image, PhotoUploader
end
