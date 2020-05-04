class User < ApplicationRecord 
    has_many :gameusers
    has_many :games, through: :gameusers

    
end