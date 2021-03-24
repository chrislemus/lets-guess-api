class GameRecord < ApplicationRecord
  belongs_to :phrase
  validates :username, presence: true
  validates :elapsed_time, presence: true
  validates :phrase_id, presence: true
end
