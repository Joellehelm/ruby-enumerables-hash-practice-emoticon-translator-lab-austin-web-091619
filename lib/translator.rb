require "yaml"

def load_library(file)
  hash = {}
  emotes = YAML.load(File.open(File.join(File.dirname(__FILE__), 'emoticons.yml')))
  emotes.each do |a, b|
    emote = b[0]
    mean = b[1]
    hash[:get_emoticon] = {emote => a}
    hash[:get_meaning] = { mean => a}
  end
    return hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
