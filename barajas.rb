require_relative 'carta.rb'


# ● Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un
# arreglo. (1 Punto)
class Baraja
    attr_reader :cartasPintas, :cartasNumeros, :mazo
    # ● Al crear una baraja (constructor) se deben generar todas las combinaciones de
    # números y pinta y guardarse dentro del arreglo cartas.
    def initialize(cartas)
        @cartasPintas = cartas.pintas
        @cartasNumeros = cartas.naipes
        @cartas = @cartasPintas.product(@cartasNumeros)
    end

    # ● Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar
    # .shuffle.
    def barajar
        @mazo = @cartas.shuffle
    end

    # ● Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar
    # .pop. (1 Punto)
    def sacar
        @sacar = @mazo.pop
    end

    # ● Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de
    # la baraja. (1 Punto)
    def repartirMano
        @repartir = @mazo.pop(5)
    end

end

miCarta = Carta.new(13,"D")

miBaraja = Baraja.new(miCarta)
print miBaraja.barajar 
print "\n"
print miBaraja.sacar
print "\n"
print miBaraja.repartirMano
print "\n"