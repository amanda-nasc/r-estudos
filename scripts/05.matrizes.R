
# O que são matrizes? -----------------------------------------------------

# São uma coleção de elementos do mesmo tipo e bidimensionais

# Criação de Matrizes -----------------------------------------------------

matriz <- matrix(1:9, nrow = 3, byrow = T)


# Como nomear matrizes ----------------------------------------------------

vendas_joao <- c(15, 12, 25, 32, 60)
vendas_maria <- c(16, 18, 25, 22, 72)
vendas_mariana <- c(18, 17, 22, 35, 80)
vendas <- c(vendas_joao, vendas_maria, vendas_mariana)

vendedores <- c( "João", "Maria", "Mariana")
dias <- c("Seg", "Ter", "Qua", "Qui", "Sex")

matriz_vendas <- matrix(vendas, nrow = 3, byrow = TRUE, dimnames = list(vendedores, dias))

# também é possível nomear assim:
# rownames(matriz_vendas) <- vendedores
# colnames(matriz_vendas) <- dias


# Acessando Elementos de uma Matriz ---------------------------------------

# identificar qual Linha e qual Coluna
# exemplo João fez quantas vendas na Sexta?
matriz_vendas[1, 5]

# acessando pelo nome
matriz_vendas["Mariana", "Ter"]

# acessar recortes de uma matriz
# todas as vendas de Seg e Ter
matriz_vendas[1:3, 1:2]

#se quiser exibir todas as colunas, pode deixar em branco
# exemplo: todas as vendas de Seg a Quin
matriz_vendas[, 1:4]

# todas as vendas as mulheres
matriz_vendas[2:3, ]

# Manipulação de Matrizes -------------------------------------------------

# adicionar linhas
vendas_henrique <- c(14, 12, 24, 17, 68)

matriz_vendas <- rbind(matriz_vendas, "Henrique" = vendas_henrique)

# adicionar colunas
total_vendas <- rowSums(matriz_vendas)
media_vendas <- rowMeans(matriz_vendas)

matriz_vendas <- cbind(matriz_vendas, "Total" = total_vendas, "Média" = media_vendas)

# resumo estatístico
summary(matriz_vendas)

# Desafio -----------------------------------------------------------------

#
# Os quatro grandes clubes do Rio de Janeiro — Flamengo, Fluminense, Vasco e Botafogo —
# disputaram 11 rodadas na fase de liga do Campeonato Carioca 2025.
#
# Durante essa fase, cada time marcou uma quantidade específica de gols,
# conforme representado no vetor abaixo:
#
# gols <- c(
#   1, 1, 1, 5, 2, 2, 5, 0, 1, 2, 5,  # Flamengo
#   0, 0, 1, 3, 0, 1, 1, 2, 0, 2, 3,  # Fluminense
#   1, 0, 1, 2, 4, 1, 2, 1, 0, 0, 1,  # Vasco
#   1, 2, 1, 1, 2, 2, 1, 0, 0, 1, 0   # Botafogo
# )
#
# Seu desafio é:
#
# • Criar uma matriz 4x11 com os gols de cada time por rodada
# • Nomear corretamente as linhas (times) e as colunas (rodadas)
#
# Após criar a matriz, responda:
#
# • Qual time marcou o maior número de gols nessa fase do Carioca?
#
# Dica:
# Para criar o vetor com as rodadas utilize:
# paste("Rodada", 1:11)


 gols <- c(
   1, 1, 1, 5, 2, 2, 5, 0, 1, 2, 5,  # Flamengo
   0, 0, 1, 3, 0, 1, 1, 2, 0, 2, 3,  # Fluminense
   1, 0, 1, 2, 4, 1, 2, 1, 0, 0, 1,  # Vasco
   1, 2, 1, 1, 2, 2, 1, 0, 0, 1, 0   # Botafogo
)

clubes <- c("Flamengo", "Fluminense", "Vasco", "Botafogo")
rodadas <- paste("Rodada", 1:11)


matriz_gols <- matrix(gols, nrow = 4, ncol = 11, byrow = TRUE, dimnames = list(clubes, rodadas))

total_gols <- rowSums(matriz_gols)

matriz_gols <- cbind(matriz_gols, "Total Gols" = total_gols)

time_mais_gols <- names(which.max(total_gols))

cat("O time que mais fez gols foi o", time_mais_gols)
