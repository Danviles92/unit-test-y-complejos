class Complejos
    def initialize(a, b)
        @a = a
        @b = b    
    end
    def suma(c_b)
        suma_r = @a + c_b.get_a.to_i
        suma_i = @b + c_b.get_b.to_i
        puts "(#{suma_r}, #{suma_i}i)"
    end
    def resta(c_b)
        resta_r = @a - c_b.get_a.to_i
        resta_i = @b - c_b.get_b.to_i
        puts "(#{resta_r}, #{resta_i}i)"
    end
    def producto(r)
        puts "(#{@a*r}, #{@b*r}i)"
    end
    def get_a
         @a
    end
    def get_b
         @b
    end
end

a_complejo = Complejos.new(5,8)
b_complejo = Complejos.new(2,3)
r = 5

suma = a_complejo.suma(b_complejo)
resta = a_complejo.resta(b_complejo)
producto_escalar = a_complejo.producto(r)

puts "Suma de #{a_complejo} con #{b_complejo} es = #{suma}"
puts "Resta de #{a_complejo} con #{b_complejo} es = #{resta}"
puts "Producto escalar de #{a_complejo} con #{r} es = #{producto_escalar}"


