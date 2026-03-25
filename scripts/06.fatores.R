
# O que são fatores? ------------------------------------------------------

# São estruturas de dados usadas para representar variáveis categóricas

# Criação de Fatores Nominais ---------------------------------------------

generos <- c("masculino", "feminino", "feminino", "masculino", "feminino")
summary(generos)

generos_fator <- factor(generos)
summary(generos_fator)

# Criação de Fatores Ordinais ---------------------------------------------

avaliacao <- c("bom", "ruim", "médio", "médio", "bom")
summary(avaliacao)

avaliacao_fator <- factor(avaliacao, ordered = TRUE, levels = c("ruim", "médio", "bom"))

summary(avaliacao_fator)

# Desafio -----------------------------------------------------------------
#
# A equipe de atendimento de uma empresa coletou 100 avaliações de clientes
# sobre a experiência com os serviços oferecidos.
#
# As respostas possíveis eram:
# "péssimo", "ruim", "regular", "bom", "excelente"
#
# As avaliações foram registradas no vetor avaliacoes_clientes,
# já criado para você:
#
# set.seed(42)
# avaliacoes_clientes <- sample(
#   c("péssimo", "ruim", "regular", "bom", "excelente"),
#   size = 100,
#   replace = TRUE
# )
#
# Seu desafio é:
#
# • Transformar o vetor avaliacoes_clientes em um fator ordinal,
#   com a seguinte ordem de níveis:
#   "péssimo" < "ruim" < "regular" < "bom" < "excelente"
#
# • Gerar um resumo com a quantidade de respostas por categoria
#
# • Descobrir qual foi o nível de satisfação mais comum

set.seed(42)
avaliacoes_clientes <- sample(
 c("péssimo", "ruim", "regular", "bom", "excelente"),
 size = 100,
   replace = TRUE
)

avaliacao_clientes_fator <- factor(
  avaliacoes_clientes, ordered = TRUE, 
  levels = c("péssimo", "ruim", "regular", "bom", "excelente")
  )

avaliacao_resumo <- summary(avaliacao_clientes_fator)
avaliacao_mais_comum <- names(which.max(avaliacao_resumo))

cat("A avaliação mais comum foi", avaliacao_mais_comum)
