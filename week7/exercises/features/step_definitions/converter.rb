class Converter
  def initialize(value)
    @value = value.to_f
  end

  def type=(type)
    @type = type
  end

  def convert
    self.send("#{@type}_conversion")
  end

  def Faranheit_conversion
    ((@value - 32) * (5.0/9.0)).round(1)
  end
end
