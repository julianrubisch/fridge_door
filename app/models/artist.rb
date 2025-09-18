class Artist < ApplicationRecord
  has_rich_text :notes
  has_one_attached :avatar
  has_many :artworks, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
end
