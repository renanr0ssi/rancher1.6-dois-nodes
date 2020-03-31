#Baixar imagem mais recente do Ubuntu:
FROM ubuntu

#informa o Mantenedor dessa imagem que criaremos (Você pode colocar seu prórpio nome):
LABEL MAINTAINER="Renan Rossi"

#Cria o diretório que será utilizado como volume:
RUN mkdir /data/rancher

#Copia arquivo locale ajustado para dentro da imagem:
#WORKDIR /usr/
COPY locale /etc/default/

#Instala Docker:
RUN apt install docker -y
