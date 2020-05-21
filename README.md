# CalculadoraThrift_docker-compose
_Programa de una calculadora remota (servidor y cliente), que te permite sumar, restar, multiplicar y dividir 2 números enteros._

## Instrucciones
En línea de comandos, ir al directorio donde se encuentra el docker-compose.yml y ejecutar los siguientes comandos:
1. "docker-compose build".
2. "docker-compose create".
3. Para ejecutar el servidor: "docker start calculadora-servidor".
4. Para ejecutar el servidor: "docker start -i calculadora-cliente".

**Nota:** Para detener el cliente solo debe seleccionar la opción 5 ("Salir"). Y para detener el servidor ejecute el comando: "docker stop calculadora-servidor".
