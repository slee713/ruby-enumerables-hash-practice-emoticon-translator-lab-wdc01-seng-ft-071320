# require modules here
require "yaml"
require "pry"
def load_library(emoticons)
  # code goes here
  library = YAML.load_file(emoticons)
  # binding.pry
  library.each_with_object({}) do |(expression, emotes), organized_lib|
    organized_lib[expression]={}
    emotes.each do |emote|
      if emote == emotes[0]
        organized_lib[expression][:english] = emote
      elsif emote == emotes[1]
        organized_lib[expression][:japanese] = emote
      end
    end
  end

end
# binding.pry
def get_japanese_emoticon(source, emoticon)
  # code goes here
  library = load_library(source)
  # binding.pry

  library.find do |expression, languages|
  # binding.pry
    values = languages.collect {|k, v| v}
    # binding.pry
    values.include? emoticon
        # japanese_emote = languages[:japanese]
      # binding.pry
    end

  #  binding.pry
end

def get_english_meaning(source, emoticon)
  # code goes here
  library = load_library(source)
  # binding.pry
  library.each do |expression, languages|

    values = languages.collect {|k, v| v}
    # # binding.pry
      if values.include? emoticon
          return expression
      end
      if emoticon == nil
        return "Sorry, that emoticon was not found"
      end
    end



end
