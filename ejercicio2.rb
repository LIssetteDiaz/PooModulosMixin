class MiClase
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.saludar
    print "Hola! Soy la clase #{@name}"
    self
  end
end
c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar
