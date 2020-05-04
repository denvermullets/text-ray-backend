require 'rest-client'
require 'json'

Word.destroy_all
Gameword.destroy_all
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
    Word.create(word: word, point_value: points)

    wordID = Word.find_by(word: word).id
    gameID = Game.find_by(letters: "paeglmx")
    x = Gameword.create(word_id: wordID, game_id: gameID)
        if x.id 
            puts "created #{word}"
        end 
    
end