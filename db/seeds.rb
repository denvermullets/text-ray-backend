require 'rest-client'
require 'json'

Word.destroy_all
GameWord.destroy_all
Game.destroy_all

Game.create(letters: "paeglmx")

array = ["agape",
    "ample",
    "apex",
    "appall",
    "appeal",
    "appellee",
    "apple",
    "epee",
    "example",
    "exempla",
    "expel",
    "expellee",
    "gape",
    "lamp",
    "lapel",
    "leap",
    "maple",
    "megaplex",
    "paella",
    "page",
    "pale",
    "pall",
    "palm",
    "palp",
    "pampa",
    "papa",
    "papal",
    "peal",
    "peel",
    "peep",
    "plea"]

    def calculate_points(input)
        if input.length == 4
            return 1
        else 
            return input.length
        end
      end # end of calc points 


   


array.each do |word|
    mykey = ENV["API_KEY"] 
    url = RestClient.get("https://www.dictionaryapi.com/api/v3/references/collegiate/json/#{word}?key=#{mykey}")
    word_parse = JSON.parse(url)
    points = calculate_points(word)
    Word.create(spelling_word: word, point_value: points)

    wordID = Word.find_by(spelling_word: word)
    gameID = Game.find_by(letters: "paeglmx")
    x = GameWord.create(word_id: wordID.id, game_id: gameID.id)

        if x.id 
            puts "created #{word}"
        end 
    
end