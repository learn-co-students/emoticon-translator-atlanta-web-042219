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
    v.each do |k1, v1|
      if emoticon == k1
        return v1
      end
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  # code goes here
  
  library.each do |k, v|
    binding.pry
  end
end
end