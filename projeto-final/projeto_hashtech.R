
# Instalação e Carregamento dos Pacotes -----------------------------------

install.packages("readr")

install.packages("scales")

library(dplyr)
library(ggplot2)
library(readr)

library(scales)

# Importação dos Dados ----------------------------------------------------

vendas_hashtech <- read_csv("vendas_hashtech.csv")

View(vendas_hashtech)

# Calculando Faturamento Mensal -------------------------------------------

vendas_mensais <- vendas_hashtech %>% 
  mutate(mes = substr(data, 1, 7)) %>% 
  group_by(mes) %>% 
  summarise(total_faturamento = sum(faturamento))

ggplot(vendas_mensais, aes(x = mes, y = total_faturamento, group = 1))+
  geom_line(size = 1.2) +
  geom_point(size = 2.05)+
  labs(
    title = "Faturamento Mensal 2024",
    x = "Mês",
    y = "Faturamento"
  )+
  theme_minimal()

# Calculando Faturamento por Produto --------------------------------------

vendas_produtos <- vendas_hashtech %>% 
  mutate(mes = substr(data, 1, 7)) %>% 
  group_by(mes, produto) %>% 
  summarise(total_faturamento = sum(faturamento))

ggplot(vendas_produtos, aes(x = mes, y = total_faturamento, fill = produto))+
  geom_col(position = "dodge") +
  labs(
    title = "Faturamento por Produto",
    x = "Mês",
    y = "Faturamento",
    fill = NULL
  )+
  scale_y_continuous(labels = label_number(big.mark = ".", decimal.mark = ",")) + #ajustar escala do eixo X
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Calculando o Preço Médio dos Produtos -----------------------------------

preco_medio <- vendas_hashtech %>% 
  mutate(mes = substr(data, 1, 7)) %>% 
  group_by(mes, produto) %>% 
  summarise(preco_medio = mean(preco_unitario))

ggplot(preco_medio, aes(x = mes, y = preco_medio, color = produto, group = produto))+
  geom_line(size = 1.2) +
  labs(
    title = "Preço Médio dos Produtos",
    x = "Mês",
    y = "Faturamento",
    color = NULL
  )+
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))