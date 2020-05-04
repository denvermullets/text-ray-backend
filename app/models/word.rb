class Word < ApplicationRecord 
    has_many :gamewords
    has_many :games, through: :gamewords

    def checkWord(word) 
        find_word = Word.find_by(word: word)
        if !(find_word)
            #call to API
        end
    end
 end