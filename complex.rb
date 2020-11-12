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
end

complex_a = ComplexN.new(5, -8)
complex_b = ComplexN.new(2, 3)

puts complex_a.complexize

puts ComplexN.sum(complex_a, complex_b).complexize
