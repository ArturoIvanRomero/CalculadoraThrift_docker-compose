FROM ubuntu
RUN mkdir /calculadoraServidor
RUN mkdir /calculadoraThrift
RUN ["/bin/bash", "-c", "apt-get update"]
RUN ["/bin/bash", "-c", "apt-get install -y python3-pip"]
RUN ["/bin/bash", "-c", "python3 -m pip install six"]
RUN ["/bin/bash", "-c", "apt-get install -y python3-thrift"]
WORKDIR /calculadoraServidor
EXPOSE 9000
CMD python3 ./servidor.py