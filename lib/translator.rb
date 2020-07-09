# require modules here

require "yaml"
require "pry"



def load_library(emoticons)
  # code goes here
  library = YAML.load_file(emoticons)
  sorted_lib = {}
  # binding.pry
  library.each do |expression, emote|
    sorted_lib[expression] ={}
    sorted_lib[expression][:english]=emote[0]
    sorted_lib[expression][:japanese]=emote[1]
  end
  sorted_lib

end
# binding.pry
def get_japanese_emoticon(source, emoticon)
  # code goes here
  library = load_library(source)
  # binding.pry
  emote = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  # binding.pry
  emote ? library[emote][:japanese]: "Sorry, that emoticon was not found"

    values = languages.collect {|k, v| v}
    # binding.pry
    values.include? emoticon
        japanese_emote = languages[:japanese]
      # binding.pry
    end





def get_english_meaning(source, emoticon)
  # code goes here

  #
  # library = load_library(source)
  # # binding.pry
  # library.each do |expression, languages|
  #
  #   values = languages.collect {|k, v| v}
  #   # binding.pry
  #     if values.include? emoticon
  #       return expression
  #     end
  #
  #
  #   end
  #   return "Sorry, that emoticon was not found"




  library = load_library(source)
  expression = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  expression ? expression: "Sorry, that emoticon was not found"
  # binding.pry
#   library.each do |expression, languages|
#     values = languages.collect {|k, v| v}
#     # binding.pry
#       if values.include? emoticon
#         return expression
#       end
#     end
#     return "Sorry, that emoticon was not found"
end
