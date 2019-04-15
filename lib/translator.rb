require "YAML"
# "emoticons.yml"

def load_library(file)
	emotes = YAML.load_file(file)
	new_hash={"get_meaning" => {}, "get_emoticon" => {} }
	emotes.each {|meaning, arr|
		new_hash["get_meaning"][arr[1]] = meaning
		new_hash["get_emoticon"][arr[0]] = arr[1]
	}
	new_hash
end

def get_japanese_emoticon(file, english)
	load_library(file)["get_emoticon"].each{|en, jp|
		return jp if english==en
	}
	"Sorry, that emoticon was not found"
end

def get_english_meaning(file, japanese)
	load_library(file)["get_meaning"].each{|jp, meaning|
		return meaning if japanese==jp
	}
	"Sorry, that emoticon was not found"
end
