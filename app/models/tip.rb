class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :player

  validates :title, presence: true
end
