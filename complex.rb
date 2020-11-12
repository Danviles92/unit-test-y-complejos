class ComplexN
  attr_reader :a, :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def complexize
    second_component = b >= 0 ? "+ #{b}" : "- #{-b}"

    "(#{a} #{second_component}i)"
  end

  def self.sum(complex_a, complex_b)
    ComplexN.new(complex_a.a + complex_b.a, complex_a.b + complex_b.b)
  end

  def self.subtract(complex_a, complex_b)
    ComplexN.new(complex_a.a - complex_b.a, complex_a.b - complex_b.b)
  end

  def self.multiply(scalar, complex)
    ComplexN.new(scalar * complex.a, scalar * complex.b)
  end
end

complex_a = ComplexN.new(2, 2)
complex_b = ComplexN.new(2, -3)

puts ComplexN.sum(complex_a, complex_b).complexize
puts ComplexN.subtract(complex_a, complex_b).complexize
puts ComplexN.multiply(5, complex_b).complexize
