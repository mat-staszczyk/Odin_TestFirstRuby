class Book
  attr_reader :title

  def title=(name)
    forbidden = %w(the in of and a an)
    words = name.split(' ')
    words.first.capitalize!
    words[1..-1].map do |word|
      (forbidden.include? word) ? word : word.capitalize!
    end
    @title = words.join(' ')
  end
end
