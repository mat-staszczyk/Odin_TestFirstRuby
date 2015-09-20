class Temperature

  def self.from_celsius (c)
    new(:c => c)
  end

  def self.from_fahrenheit (f)
    new(:f => f)
  end

  def ftoc (f)
    (f - 32) * (5.0/9.0)
  end

  def ctof (c)
    c * 1.8 + 32
  end

  def initialize (hash)
    if hash.key?(:f) then
      @fahrenheit = hash[:f]
      @celsius = ftoc (@fahrenheit)
    elsif hash.key?(:c)
      @celsius = hash[:c]
      @fahrenheit = ctof (@celsius)
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end

end
