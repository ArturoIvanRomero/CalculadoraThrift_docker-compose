FROM ubuntu
RUN mkdir /calculadoraCliente
RUN mkdir /calculadoraThrift
RUN ["/bin/bash", "-c", "apt-get update"]
RUN ["/bin/bash", "-c", "apt-get install -y ruby-thrift"]
WORKDIR /calculadoraCliente
EXPOSE 9000
CMD ruby ./cliente.rb