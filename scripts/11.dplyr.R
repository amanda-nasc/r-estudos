
# Instalação e Carregamento dos Pacotes -----------------------------------

install.packages("dplyr")
install.packages("nycflights13")

# é necessário carregar os pacotes:

library(dplyr)
library(nycflights13)

# Conhecendo os Dados -----------------------------------------------------

View(flights)
?flights

# Manipulação de Dados ----------------------------------------------------

#SELECT: seleciona apenas colunas específicas, de interesse
voos1 <- select(flights, month, day, flight, carrier, distance, air_time)

#FILTER: filtra linhas baseado em condições específicas 
voos2 <- filter(voos1, carrier == "AA" & month == 12 & day == 25)

# Porém ficar criando df diferentes pra cada condição não é viável, 
# por isso existe o pipe %>% que permite ir alterando o df diversas vezes
# atalaho ctrl + shift + M = %>%

# Nesse mesmo exemplo poderíamos fazer em um único df:

voos_df <- flights %>% 
  select(month, day, flight, carrier, distance, air_time) %>% 
  filter(carrier == "AA" & month == 12 & day == 25) %>% 
  mutate(speed = distance / air_time * 60) %>% # MUTATE: cria novas colunas
  arrange(desc(speed)) # ARRANGE: ordena os dados

atrasos_df <- flights %>% 
  group_by(carrier) %>% # GROUP BY: agrupa os dados
  summarise(atraso_medio_chegada = mean(arr_delay, na.rm = TRUE)) %>% # SUMMARISE: resume os dados 
  # na.rm = TRUE faz com que o R ignore os valores faltantes (NA)
  rename(transportadora = carrier) # RENAME: renomeia as colunas

# Desafio -----------------------------------------------------------------
# Você acaba de ser contratado por uma startup que está desenvolvendo um app para 
# ajudar passageiros a escolherem o aeroporto com a melhor pontualidade em NYC.

# Sua missão é descobrir qual dos três aeroportos de origem (JFK, LGA e EWR) apresenta os 
# menores atrasos na partida.

# O CEO quer um resumo que contenha o número total de voos e a média dos atrasos na 
# partida para cada aeroporto.

# Seu desafio é:

# - Agrupar os dados por aeroporto.
# - Para cada aeroporto, calcular o total de voos e a média do atraso na partida, 
#   ignorando os valores ausentes.
# - Ordenar os dados em ordem crescente.

# Dica: Para calcular o total de voos use total_voos = n() dentro do summarise.


voos_df <- flights %>% 
  group_by(origin) %>% 
  summarise(total_voos = n(), atraso_medio_partida = mean(dep_delay, na.rm = TRUE)) %>% 
  arrange(atraso_medio_partida) %>% 
  rename(origem = origin)
  
    
# origin <- aeroportos JFK, LGA e EWR
# dep_delay <- atraso de partida

