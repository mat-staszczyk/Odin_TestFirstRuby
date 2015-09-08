def echo (word)
  "#{word}"
end

def shout (word)
  "#{word.upcase}"
end

def repeat (text, r=2)
	r -= 1			
	"#{text}" + " #{text}"*r
end

def start_of_word (text, i)
	text = text[0...i]
	"#{text}"
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
