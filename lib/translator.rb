require "yaml"

def load_library(file)
  jpart = {}
  epart = {}
  hash1 = {}
  hash2 = {}
  hash = {}
  emotes = YAML.load(File.open(File.join(File.dirname(__FILE__), 'emoticons.yml')))
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

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  if hash[:get_emoticon][emoticon] != nil
  return hash[:get_emoticon][emoticon]
else
  puts "Sorry, that emoticon was not found"

end

def get_english_meaning
  # code goes here
end
