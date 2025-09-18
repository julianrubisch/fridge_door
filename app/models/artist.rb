class Artist < ApplicationRecord
  has_rich_text :notes
  has_one_attached :avatar

  validates :first_name, presence: true
  validates :last_name, presence: true
end
