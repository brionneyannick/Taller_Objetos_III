class Vehicle
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@contador_de_cars = 0
  def initialize(model, year)
    super
    @@contador_de_cars += 1
  end

  def self.mostrar_contador
    @@contador_de_cars
  end

  def engine_start
    super
    print 'El motor se ha encendido!'
  end
end

arreglo_carros = []
modelos = ['Spark', 'Camaro', 'Corolla', 'Hilux', 'Leon', '4Runner']
ano = [2018, 2009, 2010, 2015, 2000]

10.times do
arreglo_carros << Car.new(modelos.sample, ano.sample)
end

puts "#{arreglo_carros.sample.engine_start} en el #{arreglo_carros.sample.model} #{arreglo_carros.sample.year}"
puts Car.mostrar_contador
