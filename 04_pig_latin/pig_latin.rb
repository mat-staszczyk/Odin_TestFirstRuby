class String

  def capitalized?
    chars.first == chars.first.upcase
  end

end

def translate (words)
  words = words.split
  words.map do |word|
    
    to_capitalize = true if word.capitalized? 

    if /^[aeiouy]/i === word then
      word << "ay"
    elsif /qu|.qu/i === word then
      range = /^qu/ === word ? 2 : 3
      word << "#{word.slice!(0...range)}ay" 
    else
      range = word.index(/[aeiouy]/i)
      word << "#{word.slice!(0...range)}ay"
    end

    word.capitalize! if to_capitalize

  end
  words.join(" ")
end
