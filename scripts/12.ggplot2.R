
# Instalação e Carregamento dos Pacotes -----------------------------------

install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(dplyr)

# Conhecendo os Dados -----------------------------------------------------

View(penguins)
?penguins

# Visualização de Dados com ggplot2 ---------------------------------------

# 1. Gráfico de Dispersão

ggplot(penguins, aes(x = bill_len, y = bill_dep, color = species)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Bico de Pinguins: Comprimento vs Profundidade",
    x = "Comprimento do Bico (mm)",
    y = "Profundidade do Bico (mm)",
    color = NULL
  ) +
  theme_minimal()

# - ggplot(): define os dados e os eixos (x = comprimento do bico, y = profundidade)
# - aes(): mapeia as variáveis e colore os pontos por espécie
# - geom_point(): adiciona os pontos (tamanho 3 e leve transparência 0.7)
# - labs(): define título e nomes dos eixos (remove título da legenda)
# - theme_minimal(): aplica um tema visual mais limpo ao gráfico

# 2. Gráfico Boxplot

ggplot(penguins, aes( x = species, y = body_mass, fill = species)) +
  geom_boxplot() +
  labs(
    title = "Distribuição da Massa Corporal dos Pinguins",
    x = "Espécies",
    y = "Massa Corporal (g)",
  ) +
  guides(fill = FALSE) +
  theme_classic()

# - ggplot(): define os dados e os eixos (x = espécies, y = massa corporal)
# - aes(): mapeia as variáveis e colore as caixas por espécie
# - geom_boxplot(): cria o gráfico de caixa (mostra mediana, quartis e outliers)
# - labs(): define título e nomes dos eixos
# - guides(fill = FALSE): remove a legenda de cores
# - theme_classic(): aplica um tema visual mais simples e clássico

# Desafio -----------------------------------------------------------------

# Você foi contratado como cientista de dados para apresentar insights visuais sobre os 
# pinguins. Você deve criar um gráfico de barras que mostre o total de pinguins 
# registrados em cada ilha.

# Seu desafio é:

# - Agrupar os dados por ilha.
# - Calcular o total de pinguins para cada ilha.
# - Gerar um gráfico de barras utilizando esses dados.

# Dica: Utilize geom_col() para criar o gráfico de barras.

pinguins_ilhas <- penguins %>% 
  group_by(island) %>% 
  summarise(total_pinguins = n())

ggplot(pinguins_ilhas, aes(x = island, y = total_pinguins,fill = island)) +
  geom_col() +
  labs(
    title = "Total de Pinguins por Ilha",
    x = "Ilha",
    y = "Total de Pinguins"
  ) +
  guides(fill = FALSE) +
  theme_classic()
