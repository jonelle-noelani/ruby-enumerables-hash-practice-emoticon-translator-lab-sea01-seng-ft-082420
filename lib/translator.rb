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

def get_japanese_emoticon(file, jmote)
  emoticons = YAML.load_file(file)
  emoticons.each do |key, value|
    emoticons[key] = { :english => value[0], :japanese => value[1] } 
  emoticons.each do |key,value|
    if emoticons[key][:japanese][value][1] == jmote
    key
  end
end
end

def get_english_meaning
  # code goes here
end