class Player < ApplicationRecord
  has_many :tips
  has_many :games, through: :tips

  validates :name, presence: true
end
