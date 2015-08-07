class Book
  attr_accessor :title

  def title
    title = @title
    exceptions = ["and", "in", "the", "of", "a", "an"]
    title = (title.split(/ /).each { |x| exceptions.include?(x) ? x : x.capitalize! })
    title[0].capitalize!
    @title = title.join(' ')
  end

end

@book = Book.new
