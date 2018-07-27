class Gosssip < ApplicationRecord
  has_many :tags, foreign_key: true
end
