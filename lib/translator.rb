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
  new_emoticons = load_library(file)
  new_emoticons.each do |key,value|
    value.each do |lingo, mote|
    if new_emoticons[key][lingo] == jmote
      puts key 
    end
  end
  end
end


 # if value.include? jmote
    # puts key
    # value.each do |l_key , mote|
    #   puts mote
    # if value[key] == jmote
    

def get_japanese_emoticon
 
end