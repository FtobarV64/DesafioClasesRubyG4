# 4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una
# cuenta a la otra.

# 1. Crear la clase CuentaBancaria. (1 Punto)
class CuentaBancaria
    # Es necesario que exista el attr_writer o attr_accessor del saldo para acceder al
    # saldo de la otra cuenta.
    attr_accessor :banco, :nro_cuenta, :saldo
    # 2. Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el
    # número de cuenta y el saldo (el saldo por defecto será cero). (1 Punto)
    def initialize(banco, nro_cuenta, saldo = 0)
        @banco = banco
        @nro_cuenta = nro_cuenta
        @saldo = saldo
    end
# 3. Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este
# método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo
# monto. (1 Punto)
    def transferir(monto, cuenta)
        @monto = monto
        @saldo = @saldo - @monto
    end
end

# 1. Crear la clase Usuario
class Usuario
# 5. Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al
# menos 1 cuenta bancaria. (1 Punto)
    def initialize(nombre, ctaBancaria)
        @nombre = nombre
        @ctaBancaria = ctaBancaria
    end

    # 6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario. (1
    # Punto)
    def saldo_total 

    end
end