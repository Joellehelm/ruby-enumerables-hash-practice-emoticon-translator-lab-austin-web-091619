require "yaml"

def load_library(file)
  jpart = {}
  epart = {}
  hash1 = {}
  hash2 = {}
  hash = {}
  emotes = YAML.load(File.open(File.join(File.dirname(__FILE__), 'emoticons.yml')))
  # emotes.each do |a, b|
  #   emote = b[0]
  #   mean = b[1]
  #   hash[:get_emoticon] << emote
  #   hash[:get_meaning]
  #   puts hash
  # end
  work = emotes.invert
  work.each do |a, b|
    jpart[a[1]] = b
    epart[a[0]] = a[1]
  end
  epart = epart.uniq
  jpart = jpart.uniq
  epart.each do |a, b|
    hash1[a] = b
  end
  jpart.each do |a, b|
     hash2[a] = b
  end
  hash = {:get_emoticon => hash1, :get_meaning => hash2}
  return hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
