
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
        @cuenta = cuenta
        @monto = monto
        @saldo = @saldo - @monto
        puts "Se han transferido $#{@monto} a la cuenta #{@cuenta} "
    end
end

# 1. Crear la clase Usuario
class Usuario
# 5. Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al
# menos 1 cuenta bancaria. (1 Punto)
    def initialize(nombre, ctaBancaria)
        @nombre = nombre
        @ctaBancaria = ctaBancaria.nro_cuenta
        @saldoTotal = ctaBancaria.saldo
    end

    # 6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario. (1
    # Punto)
    def saldo_total 
        puts "El saldo total de la cuenta #{@ctaBancaria} perteneciente a #{@nombre} es: #{@saldoTotal}"
    end
end

# 4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una
# cuenta a la otra.
miCuenta = CuentaBancaria.new("Chile", "225", 5000)
miCuenta.transferir(5000, '236')
miUsuario = Usuario.new('Javier', miCuenta)
miUsuario.saldo_total
suCuenta = CuentaBancaria.new("Falabella", '236', 5000)
suCuenta.transferir(-5000, '225')
suUsuario = Usuario.new('Patricia', suCuenta)
suUsuario.saldo_total