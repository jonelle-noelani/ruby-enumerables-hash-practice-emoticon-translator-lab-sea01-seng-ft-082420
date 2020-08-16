# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons.each do |key, value|
    emoticons[key] = { :english => value[0], :japanese => value[1] } 
  end
  emoticons
end

def get_english_meaning(file, jmote)
  english_meaning = ""
  new_emoticons = load_library(file)
    new_emoticons.each do |key,value|
      value.each do |lingo, mote|
        english = if new_emoticons[key][lingo] == jmote then
          key
        else
          "Sorry"
        end
        
        # if new_emoticons[key][lingo] == jmote
        #   english_meaning = key
      
        # elsif new_emoticons[key][lingo] != jmote
        #   english_meaning = "Sorry"
        end
        english
    end
  # english_meaning
end

  
 


      
  




 # if value.include? jmote
    # puts key
    # value.each do |l_key , mote|
    #   puts mote
    # if value[key] == jmote
    

def get_japanese_emoticon
 
end