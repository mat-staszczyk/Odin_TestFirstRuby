def translate (words)
  words = words.split
  words.map do |word|
    if /^[aeiouy]/ === word then
      word << "ay"
    elsif /^(squ|sch|thr)/ === word then
      word << "#{word.slice!(0,3)}ay"
    elsif /^(qu|ch|br|th)/ === word then
      word << "#{word.slice!(0,2)}ay" 
    else
      word << "#{word.slice!(0)}ay"
    end
  end
  words.join(" ")
end
