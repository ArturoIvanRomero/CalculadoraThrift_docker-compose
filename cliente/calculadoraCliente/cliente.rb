$:.push('gen-rb')

require 'thrift'
require 'calculadora'

socket = Thrift::Socket.new('localhost', 9000)
protocolo = Thrift::BinaryProtocol.new(socket)
cliente = Calculadora::Client.new(protocolo)
socket.open()
opcion = 0
while opcion != 5
	puts "*CALCULADORA*"
	puts "1: Suma"
	puts "2: Resta"
	puts "3: Multiplicación"
	puts "4: División"
	puts "5: Salir"
	print "Elija una opción: "
	STDOUT.flush()
	opcion = Integer(STDIN.gets())
	if opcion >= 1 && opcion <=4
		print "Valor del número 1: "
		STDOUT.flush()
		numero1 = Integer(STDIN.gets())
		print "Valor del número 2: "
		STDOUT.flush()
		numero2 = Integer(STDIN.gets())
		puts
		if (opcion == 1)
			puts "Resultado: #{cliente.suma(numero1, numero2)}"
		end
		if (opcion == 2)
			puts "Resultado: #{cliente.resta(numero1, numero2)}"
		end
		if (opcion == 3)
			puts "Resultado: #{cliente.multiplicacion(numero1, numero2)}"
		end
		if (opcion == 4)
			resultado = cliente.division(numero1, numero2)
			if resultado != 0
				puts "Resultado: #{resultado}"
			else
				puts "No se puede dividir entre 0"
			end
		end
	else
		puts
		if (opcion == 5)
			puts "Saliendo..."
		else
			puts "Opción no disponible"
		end
	end
	puts
	puts
end
socket.close()