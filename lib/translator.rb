# require modules here
require "yaml"
require "pry"

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  output = {"get_emoticon" => {}, "get_meaning" => {}}
  library.each do |meaning, emoticons|
    output["get_meaning"][emoticons[1]] = meaning
    output["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  output
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)
  # code goes here
  
  library.each do |k, v|
  binding.pry
  end
end

def get_english_meaning
  # code goes here
end