def echo (text)
	"#{text}"
end

def shout (text)
	"#{text.upcase}"
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
	p = text.split.collect! { |x| (x == "and" || x == "a" || x == "an" || x == "from" || x == "over" || x == "the" ) ? x : x.capitalize }
	p.first.capitalize!
	p.join(" ")
end
