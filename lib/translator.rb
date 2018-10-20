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
  result = ""
  #emoticons.each do |meaning, emoticons|
    if emoticons.has_key? emoticon
      result = emoticons[emoticon]
    else
      result = "Sorry, that emoticon was not found"
    end
  #end
  result
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  result = ""
  emoticons.each do |meaning, emoticons|
    binding.pry
    if emoticons.has_key? emoticon 
      result = emoticons[emoticon]
    else
      result = "Sorry, that emoticon was not found"
    end
  end
  result
end