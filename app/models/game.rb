class Game < ApplicationRecord
  has_many :tips
  has_many :players, through: :tips

  validates :gameweek, inclusion: { in: 1..38 }
end
