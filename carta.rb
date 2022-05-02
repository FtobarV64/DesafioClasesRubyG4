# Baraja de cartas
# ● Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la
# pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D',
# Espada: 'E' o Trébol: 'T'. (1 Punto)
# ● Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb.

# ● Crear la clase carta con los atributos numero y pinta. (1 Punto)
class Carta
    # ● Agregar los getters y setters a ambos atributos.
    attr_accessor :numero, :pinta
    attr_reader :naipes, :pintas
    def initialize(numero, pinta)
        @naipes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        @pintas = ['C', 'D', 'E', 'T']
        raise RangeError, "El número debe estar entre 1 y 13" if !@naipes.include?(numero)
        raise RangeError, "La pinta debe ser: C, D, E o T" if !@pintas.include?(pinta) 
        @numero = numero
        @pinta = pinta
    end
end

# miCarta = Carta.new(13, "E")
# print miCarta.naipes