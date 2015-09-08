def echo (word)
  "#{word}"
end

def shout (word)
  "#{word.upcase}"
end

def repeat (word, times=2)
  ([word]*times).join(" ")
end

def start_of_word (word, x)
  word[0, x]
end

def first_word (string)
  string.split.first
end

def titleize (string) 
  forbidden = %w[and over the]
  string = string.split.each { |word| word.capitalize! unless forbidden.include? word }
  string.first.capitalize!
  string.join(" ")
end
