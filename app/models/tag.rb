class Tag < ApplicationRecord
  has_many :gossips, foreign_key: true
end
