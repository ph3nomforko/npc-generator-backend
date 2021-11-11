class Occupation < ApplicationRecord
  has_many :npcs
  validates :name, presence: true
  validates :name, uniqueness: true
end
