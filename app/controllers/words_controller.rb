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
          find_word = Word.find_by(spelling_word: input) rescue nil
          if !find_word
              mykey = ENV["API_KEY"] 
              url = RestClient.get("https://www.dictionaryapi.com/api/v3/references/collegiate/json/#{input}?key=#{mykey}")
              word_parse = JSON.parse(url)
              
              if word_parse.meta.id.length > 0 
                  points = calculate_points(input)
                  Word.create(spelling_word: input, point_value: points)
              else 
                  return "Not a real word, biotch"
              end
          else 
              return find_word
          end
      end #end of checkword method
end
