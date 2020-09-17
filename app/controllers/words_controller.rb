class WordsController < ApplicationController
    def index
        words = Word.all
        render json: words
      end
  
      def show
        # word = Word.find(params[:id])
        word = checkWord(params[:id])
        render json: word, except: [:created_at, :updated_at]
  
      end
      
      def calculate_points(input)
        if input.length == 4
            return 1
        else 
            return input.length
        end
      end # end of calc points 
          
      
      def checkWord(input) 
        find_word = Word.where(spelling_word: input).exists?
        if (find_word)
            find_word = Word.find_by(spelling_word: input)
            return find_word
        else
            mykey = ENV["API_KEY"] 
            url = RestClient.get("https://www.dictionaryapi.com/api/v3/references/collegiate/json/#{input}?key=#{mykey}")
            word_parse = JSON.parse(url)
            # byebug
            found_word = word_parse[0]["meta"]["id"] rescue nil

            if found_word 
                  points = calculate_points(input)
                  Word.create(spelling_word: input, point_value: points)
              end
          end
      end #end of checkword method
end
