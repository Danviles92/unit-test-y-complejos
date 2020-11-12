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
    second_component = complex_a.b + complex_b.b
    second_component = second_component >= 0 ? "+ #{second_component}" : "- #{-second_component}"

    "(#{complex_a.a + complex_b.a} #{second_component}i)"
  end
end

complex_a = ComplexN.new(1,  3)
complex_b = ComplexN.new(2, -2)

puts complex_a.complexize

puts ComplexN.sum(complex_a, complex_b)