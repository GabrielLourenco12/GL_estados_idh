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

muni <- read_municipality(code_muni = 'MG') #Lendo os limites territoriais dos municípios de Minas Gerais
mg <- read_state(code_state = "MG") #Lendo os limites territoriais do Estado de Minas Gerais

#Definindo diretório de trabalho no meu Desktop
setwd('E:/CURSOS/mapas_municipais/mapas_municipais/idh_minas/')

dados <- read_excel('atlas2013_dadosbrutos_pt.xlsx',sheet = 2) %>% #Lendo os dados 
  filter(ANO==2010 & UF==31) %>% #Selecionando linhas de dados para o ano de 2010
  select(Codmun7,IDHM) %>%  #Selecionando coluna de dados
  rename(code_muni=Codmun7) #Renomeando coluna de dados

#Juntando os dados com base na coluna code_muni
juntos <- inner_join(muni,dados,by="code_muni")


