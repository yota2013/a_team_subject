class Contribution < ApplicationRecord
  has_many :comments
  validates :name, :presence => true
  validates :favo, :presence => true
end
