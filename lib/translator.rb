# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  # code goes here
  library = YAML.load_file(file_path)
  binding.pry
  
end

def get_japanese_emoticon(library, emoticon)
  # code goes here
  
end

def get_english_meaning(library, emoticon)
  # code goes here
  
end