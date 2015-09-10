def translate (words)
  words = words.split
  words.map do |word|
    if /^[aeiouy]/ === word then
      word << "ay"
    elsif /^(qu|.qu)/ === word then
      range = /^qu/ === word ? 2 : 3
      word << "#{word.slice!(0...range)}ay"
    else
      range = word.index(/[aeiouy]/)
      word << "#{word.slice!(0...range)}ay"
    end
  end
  words.join(" ")
end
