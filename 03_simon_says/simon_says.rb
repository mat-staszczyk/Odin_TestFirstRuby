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

def first_word (text)
	text.split.first
end

def titleize (text)
  exceptions = ["and", "a", "an", "from", "over", "the"]
  p = text.split.collect! { |x| exceptions.include?(x) ? x : x.capitalize }
	p.first.capitalize!
	p.join(" ")
end
