class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts "El ancho del rectángulo es #{@ancho} y el largo #{@largo}"
  end

  def perimetro
    puts "El perímetro del rectángulo es #{(2 * @largo) + (2 * @ancho)}"
  end

  def area
    puts "El área del rectángulo es #{@largo * @ancho}"
  end

end

class Cuadrado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "Los lados del cuadrado miden #{@lado}"
  end

  def perimetro
    puts "El perímetro del rectángulo es #{4 * @lado}"
  end

  def area
    puts "El área del rectángulo es #{@lado * @lado}"
  end
end

nuevo_rectangulo = Rectangulo.new(10, 3)
nuevo_rectangulo.perimetro
nuevo_rectangulo.area

nuevo_cuadrado = Cuadrado.new(5)
nuevo_cuadrado.perimetro
nuevo_cuadrado.area
