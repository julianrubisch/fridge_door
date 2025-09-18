class Artwork < ApplicationRecord
  belongs_to :artist

  has_rich_text :description
  has_one_attached :image

  validates :title, presence: true
end
