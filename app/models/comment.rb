class Comment < ApplicationRecord
    
    belongs_to :contribution #こちらからも何処の所属かを記述する必要がある
    validates :comment_data,:presence => true,:length => { :maximum => 100 }
end
