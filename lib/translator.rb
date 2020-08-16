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

def get_english_meaning(file, emoticon)
  new_emoticons = load_library(file)
  new_emoticons.each do |key,value|
    if emoticon == "(Ｔ▽Ｔ)"
    puts "Got it!"
  end
end
end

def get_japanese_emoticon
 
end