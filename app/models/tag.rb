class Tag < ApplicationRecord
  has_many :gossips, index:true
end
