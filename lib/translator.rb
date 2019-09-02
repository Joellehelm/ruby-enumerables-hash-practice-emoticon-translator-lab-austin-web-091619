require "yaml"

def load_library(file)
  hash = {}
  emotes = YAML.load(File.open(File.join(File.dirname(__FILE__), 'emoticons.yml')))
  emotes.each do |a, b|
    emotes[a] = {'get_emoticon' => b[0], 'get_meaning' => b[1]}
  end
    return hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
