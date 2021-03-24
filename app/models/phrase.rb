class Phrase < ApplicationRecord
  has_many :game_records
  belongs_to :category
end
