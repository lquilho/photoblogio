class Photo < ApplicationRecord
  belongs_to :post
  validates :cloud_id, presence: true

  mount_uploader :cloud_id, PhotoUploader
end
