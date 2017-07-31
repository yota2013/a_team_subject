class Contribution < ApplicationRecord
  validates :name, presence:true
  validates :favo, presence:true
  
end
