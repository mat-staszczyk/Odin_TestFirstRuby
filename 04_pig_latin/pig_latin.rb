class String

  def capitalized?
    chars.first == chars.first.upcase
  end
  
  def ends_with_punctuation?
    /[^a-zA-Z0-9\s]/ === self[-1]
  end

end

def translate (words)
  words = words.split
  words.map do |word|
    
    to_capitalize = true if word.capitalized? 
    stash = word.slice!(-1) if word.ends_with_punctuation?

    if /^[aeiouy]/i === word 
      word << "ay"
    elsif /qu|.qu/i === word
      range = /^qu/ === word ? 2 : 3
      word << "#{word.slice!(0...range)}ay" 
    else
      range = word.index(/[aeiouy]/i)
      word << "#{word.slice!(0...range)}ay"
    end

    word.capitalize! if to_capitalize
    word << stash if stash

  end
  words.join(" ")
end
