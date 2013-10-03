class Calc
  attr_reader :ar
  def initialize
   @ar = []
  end

  def get(*input)
   @ar << input
   @ar = @ar.flatten.select {|x| x.is_a?(Fixnum)}
  
  end
      
  def plus
    @ar.inject(0, :+)
  end
  def minus
    @ar.inject(0, :-)
  end
  def clear
   @ar = []
  end
end

calc = Calc.new
calc.get(37,[[45, 2], 3])
puts calc.minus
puts calc.ar
