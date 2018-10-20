# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  # code goes here
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(file_path)
  library.each do |key, val|
    emoticons["get_meaning"][val[1]] = key
    emoticons["get_meaning"][val[0]] = val[1]
  end
  emoticons
end

def get_japanese_emoticon(library, emoticon)
  # code goes here
  
end

def get_english_meaning(library, emoticon)
  # code goes here
  
end