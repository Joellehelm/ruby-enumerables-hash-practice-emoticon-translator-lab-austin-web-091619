require "yaml"

def load_library(file)
  emotes = {}
  emotes = YAML.load(File.read("emoticons.yml"))
  emotes
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
