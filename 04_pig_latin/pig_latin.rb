def translate (subject)
  text = subject.split
  new_arr = []

  for word in text
    punct = nil
    if /[[:punct:]]$/.match(word)
      punct = word[-1, 1]
      word.chop!
    end
    if /^[[:upper:]]/.match(word[0])
      capitalize_me = true
      word.downcase!
    end
    if word[/^[aeiou]/]
      word = word + "ay"
    else
      if word[/^qu/]
        rest = word.slice!(/^qu/) + "ay"
      elsif word[/.qu/]
        rest = word.slice!(/^.qu/) +"ay"
      else
        rest = word.slice!(0...(word.index(/[aeiou]/,1))) + "ay"
      end
      word = word << rest
    end
    if capitalize_me
      word.capitalize!
      capitalize_me = nil     
    end
    if punct
      word << punct 
      punct = nil
    end 
    new_arr << word
  end

  new_arr.join(" ")

end
