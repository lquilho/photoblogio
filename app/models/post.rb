class Post < ApplicationRecord
  validates :title, presence: true
  has_many :photos, dependent: :destroy

end
