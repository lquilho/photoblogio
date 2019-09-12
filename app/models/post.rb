class Post < ApplicationRecord
  validates :title, presence: true

  has_many :photos, dependent: :destroy

  #esta linha permite criar photos ao mesmo tempo que crio posts
  #allows us to add "photo model fields in Post's model view"
  accepts_nested_attributes_for :photos, allow_destroy: true
end
