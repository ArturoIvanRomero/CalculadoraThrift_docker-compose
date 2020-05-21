import sys
sys.path.append('gen-py')

from thrift.transport import TSocket
from thrift.server import TServer
from calculadora import Calculadora

class CalculadoraHandler:
    def suma(self, numero1, numero2):
        return numero1 + numero2
    def resta(self, numero1, numero2):
        return numero1 - numero2
    def multiplicacion(self, numero1, numero2):
        return numero1 * numero2
    def division(self, numero1, numero2):
        return numero1 / numero2 if (numero2!=0) else 0 

if __name__ == "__main__": 
    socket = TSocket.TServerSocket(port=9000)
    procesador = Calculadora.Processor(CalculadoraHandler())
    server = TServer.TSimpleServer(procesador, socket)
    print("Iniciando servidor...")
    server.serve()