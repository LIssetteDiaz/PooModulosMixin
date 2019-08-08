class Vehicle
  attr_accessor :model, :year
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
  @@contador_de_instancias = 0

  def initialize(model, year)
    super
    @@contador_de_instancias += 1
  end

  def self.numero_de_instancias
    "Las veces que se ha instanciado es: #{@@contador_de_instancias}"
  end

  def engine_start
    super
    # if super == true
    "El motor se ha encendido!"
    # end
  end
end
car = Car.new('mustang', '2019')
puts car.engine_start
10.times do |i|
  Car.new('mustang', '2019')

end
puts Car.numero_de_instancias
