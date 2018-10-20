# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  # code goes here
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(file_path)
  library.each do |key, val|
    emoticons["get_meaning"][val[1]] = key
    emoticons["get_emoticon"][val[0]] = val[1]
  end
  emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  emoticons.each do |meaning, emoticons|
    binding.pry
  end
  
end

def get_english_meaning(library, emoticon)
  # code goes here
  
end