require 'rest-client'
require 'json'

Word.destroy_all
GameWord.destroy_all
Game.destroy_all
GameUser.destroy_all
User.destroy_all

User.create(name: "brett")
User.create(name: "ryan")

Game.create(letters: "paeglmx") #g1
Game.create(letters: "uatrhfg") #g2
Game.create(letters: "tarnlfg") #g3
Game.create(letters: "lutofdb") #g4


g1array = ["agape", "ample", "apex","appall", "appeal", "appellee", "apple", "epee", "example","exempla", "expel", "expellee", "gape", "lamp", "lapel", "leap", "maple", "megaplex", "paella", "page", "pale","pall","palm", "palp","pampa", "papa","papal", "peal", "peel", "peep", "plea"]
g2array = ["aught","augur","aura","fraught","frug","fugu","gruff","guar", "guff", "guru", "huff", "hurrah", "hurt", "ruff", "taught", "taut",  "thug",  "truth", "tuft","turf","tutu"]
g3array = ["altar","arrant", "attar", "fart", "fatal", "flagrant", "flat", "fragrant", "frat", "gallant", "gnat", "graft", "grant", "natal", "natant", "raft", "ragtag", "rant", "ratatat", "rattan", "tall", "tang", "tantara", "tantra","tart","tartan","tartar"]
g4array = ["blob", "blood", "blot", "blotto", "bluff", "bold", "boll", "bolo", "bolt", "bulb", "bull", "doll", "dolt", "doubtful", "dull", "flood", "flout", "flub", "fluff", "fold", "foldout", "fool", "foul", "full", "lobo", "loft", "loll", "loot", "lotto", "loud", "lout", "lull", "lulu", "told", "toll", "tool", "tubful"]

    def calculate_points(input)
        if input.length == 4
            return 1
        else 
            return input.length
        end
    end 

g1array.each do |word|
    points = calculate_points(word)
    Word.create(spelling_word: word, point_value: points)
    wordID = Word.find_by(spelling_word: word)
    gameID = Game.find_by(letters: "paeglmx")
    GameWord.create(word_id: wordID.id, game_id: gameID.id)
end

g2array.each do |word|
    points = calculate_points(word)
    Word.create(spelling_word: word, point_value: points)
    wordID = Word.find_by(spelling_word: word)
    gameID = Game.find_by(letters: "uatrhfg")
    GameWord.create(word_id: wordID.id, game_id: gameID.id)
end

g3array.each do |word|
    points = calculate_points(word)
    Word.create(spelling_word: word, point_value: points)
    wordID = Word.find_by(spelling_word: word)
    gameID = Game.find_by(letters: "tarnlfg")
    GameWord.create(word_id: wordID.id, game_id: gameID.id)
end

g4array.each do |word|
    points = calculate_points(word)
    Word.create(spelling_word: word, point_value: points)
    wordID = Word.find_by(spelling_word: word)
    gameID = Game.find_by(letters: "lutofdb")
    GameWord.create(word_id: wordID.id, game_id: gameID.id)
end
