
class Word < ApplicationRecord 
    has_many :gamewords
    has_many :games, through: :gamewords

 end