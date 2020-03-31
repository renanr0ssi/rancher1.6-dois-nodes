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
