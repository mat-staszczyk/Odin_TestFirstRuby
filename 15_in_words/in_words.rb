module Inwords

	def in_words

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

  end

end
