module Inwords

	def in_words
    res = ""
    case s_len = to_s.length
      when 0..2 then res << teens
      when 3 then res << more_digits((-2..-1),"hundred")
      when 4..6 then res << more_digits((-3..-1),"thousand")
      when 7..9 then res << more_digits((-6..-1),"million")
      when 10..12 then res << more_digits((-9..-1),"billion")
      when 13..15 then res << more_digits((-12..-1),"trillion")
      else res = "Out of range."
    end
    res = "Out of range." if self < 0
    res

	end

	private

  def teens
    ones = %w[ zero one two three four five
               six seven eight nine ].to_a
    teens = %w[ ten eleven twelve ].to_a
    prefix = %w[ nil nil twen thir four fif six seven
    						 eigh nine ].to_a

    num = self.to_s
    
    if (0..9).include? self then
      ones[self]
    else
      if num[0] == "1" then
        u_index = num[1].to_i
        ((0..2).include? u_index) ? "#{teens[u_index]}" : "#{prefix[u_index]}teen"
      else
        d_index = num[0].to_i
        s = (d_index == 4) ? "forty" : "#{prefix[d_index]}ty"
        s << " #{ones[num[1].to_i]}" if num[1] != "0"
        s
      end
    end

  end

  def more_digits
    
    s = to_s
    result = ""
    temp = s.slice!(range).to_i
    result << " #{temp.in_words}" unless temp.zero?
    temp = s.to_i.in_words
    result[0,0] = "#{temp} #{keyword}"

    result


  end

end
