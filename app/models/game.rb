class Game < ApplicationRecord 
    has_many :gameusers
    has_many :users, through: :gameusers
    has_many :gamewords
    has_many :words, through: :gamewords
end