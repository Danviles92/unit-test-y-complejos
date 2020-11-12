class Complejos
    attr_reader :a, :b
  
    def initialize(a, b)
      @a = a
      @b = b    
    end
  
    def complejizar
      "(#{a} + #{b}i)"
    end
  
    def self.suma(complejo_a, complejo_b)
      "(#{complejo_a.a + complejo_b.a} + #{complejo_a.b + complejo_b.b}i)"
    end

    def self.resta(complejo_a, complejo_b)
        "(#{complejo_a.a - complejo_b.a} - #{complejo_a.b - complejo_b.b}i)"
      end
  
    def self.producto(complejo, producto)
        "(#{complejo.a * producto} + #{complejo.b * producto}i)"
    end
  end
  
  a_complejo = Complejos.new(5,8)
  b_complejo = Complejos.new(2,3)
  
  puts a_complejo.complejizar
  puts Complejos.suma(a_complejo, b_complejo)
  puts Complejos.resta(a_complejo, b_complejo)
  puts Complejos.producto(a_complejo, 5)
  