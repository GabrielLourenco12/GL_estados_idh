##################################################################
## script para plotar mapas estaduais de IDHM usando valores    ##
## para cada município                                          ##                                                              
##                                                              ##
## desenvolvido por: Gabriel Louren?o                           ##
## contato: gabriel9lourenco@gmail.com                          ##
## linkedin: @gabriellourenco12                                 ##
##################################################################

#Removendo objetos armazenados na memória principal
rm(list = ls())


####################################################
## Carregando os pacotes                         ###
##                                               ###
####################################################

library(geobr) #Para acessar os dados do IBGE
library(ggplot2) #Para plotar os dados
library(readxl)  #Para ler os dados do excel
library(dplyr)   #Para processar os dados
library(RColorBrewer)#Fornece paleta de cores
library(ggspatial) # Para inserir a escala e a orientação do mapa

