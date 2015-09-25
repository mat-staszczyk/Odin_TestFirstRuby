class Dictionary
  def entries
    @entries ||= {}
  end
  
  def add entry
    entries[entry] = nil if entry.is_a? String
    entries.merge!(entry) if entry.is_a? Hash
  end
  
  def keywords
    entries.keys.map(&:to_s).sort
  end

  def include? word
    keywords.include? word
  end

  def find word
    found = {} 
    entries.each do |key, value|
      if key =~ /^#{word}/
        found[key] = value
      end
    end
    found
  end

end
