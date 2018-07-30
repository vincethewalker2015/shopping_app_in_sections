class Butcher < ApplicationRecord
  validates :item, presence: true
  has_many :items
end