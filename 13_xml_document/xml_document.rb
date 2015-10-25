class XmlDocument

  def initialize (indent = false)
    @indent = indent
    @level = 0
  end

  def method_missing (method, *args, &block)
    attrs = args[0] || {}
    xml = ""
    xml << "  "*@level if @indent
    xml << "<#{method}"
    attrs.each_pair do |key, value|
      xml << " #{key}='#{value}'"
    end
    if block_given?
			xml << ">"
			xml << "\n" if @indent
			@level+=1
			xml << yield
			@level-=1
			xml << "  "*@level if @indent
			xml << "</#{method}>"
			xml << "\n" if @indent
    end
  end

end
