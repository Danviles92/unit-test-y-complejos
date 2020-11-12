class Complejos
  attr_reader :a, :b

  def initialize(a, b)
    @a = a
    @b = b    
  end
  
  def suma(complejo_a, complejo_b)
    suma_r = @a + c_b.get_a.to_i
    suma_i = @b + c_b.get_b.to_i
    puts "(#{suma_r}, #{suma_i}i)"
  end

  def resta(complejo_a, complejo_b)
    resta_r = @a - c_b.get_a.to_i
    resta_i = @b - c_b.get_b.to_i
    puts "(#{resta_r}, #{resta_i}i)"
  end

  def producto(complejo, producto)
    puts "(#{complejo.a*r}, #{complejo.b*r}i)"
  end
end

a_complejo = Complejos.new(5,8)
b_complejo = Complejos.new(2,3)
r = 5

suma = Complejos.suma(a_complejo, b_complejo)
resta = Complejos.resta(a_complejo, b_complejo)
producto = Complejos.producto(a_complejo, r)

puts "Suma de #{a_complejo} con #{b_complejo} es = #{suma}"
puts "Resta de #{a_complejo} con #{b_complejo} es = #{resta}"
puts "Producto escalar de #{a_complejo} con #{r} es = #{producto_escalar}"


