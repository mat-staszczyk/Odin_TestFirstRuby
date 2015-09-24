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

end
