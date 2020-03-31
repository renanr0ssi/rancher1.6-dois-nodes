#Baixar imagem mais recente do Ubuntu:
FROM ubuntu

#informa o Mantenedor dessa imagem que criaremos (Você pode colocar seu prórpio nome):
LABEL MAINTAINER="Renan Rossi"

#Cria o diretório que será utilizado como volume:
#WORKDIR /
RUN mkdir -p /data/rancher

#Copia arquivo locale ajustado para dentro da imagem:
#WORKDIR /usr/
COPY locale /etc/default/

# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y

#Instala Docker:
RUN apt-get install docker -y

CMD ping 127.0.0.1

#Cria o arquivo de PageFile (não usa mais pois a imagem do Ubuntu ja vem com pagefile setada):
#RUN fallocate -l 4G /swapfile
#RUN chmod 600 /swapfile
#RUN mkswap /swapfile
#RUN swapon /swapfile
#RUN '/swapfile none swap sw 0 0' | tee -a /etc/fstab
