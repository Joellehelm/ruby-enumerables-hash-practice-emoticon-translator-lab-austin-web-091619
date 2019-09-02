require "yaml"

def load_library(file)
  emotes = YAML.load(File.open(File.join(File.dirname(__FILE__), "#{file}")))
  emotes
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
