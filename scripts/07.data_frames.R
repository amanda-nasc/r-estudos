
# O que é um data frame? --------------------------------------------------

# É uma estrutura de dados bidimensional que armazena colunas de diferentes tipos.
# Cada linha é uma observação e cada coluna uma variável.


# Conhecendo o Data Frame -------------------------------------------------

# O R já vem com alguns data frames incluídos na base. Vamos usar o "mtcars" nesse código

View(mtcars)

# Funções Úteis
head(mtcars) # exibe as 6 primeiras linhas
tail(mtcars) # exibe as 6 últimas linhas
str(mtcars) # exibe o tipo de dados de cada coluna
names(mtcars) # exibe nome de todas colunas
summary(mtcars)

# Criação de um Data Frame ------------------------------------------------

alunos <- c("Mariana", "Henrique", "João", "Carlos", "Fernanda")
idade <- c(22, 23, 15, 28, 24)
genero <- c("F", "M", "M", "M", "F")
aprovado <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

alunos_df <- data.frame(alunos, idade, genero, aprovado)

View(alunos_df)

# Acessando Elementos de um Data Frame ------------------------------------

#consulta idade de cada um
alunos_df[, 2] #vazio pq mostra todas linhas, 2 pq é a segunda coluna
alunos_df$aprovado

# Selecionar alunos aprovados
subset(alunos_df, aprovado == TRUE)


# Adicionando Nova Coluna -------------------------------------------------

nota <- c(8, 4.7, 5.0, 9.0, 9.8)

alunos_df$nota <- nota

# remover colunas
alunos_df$nota <- NULL

# Desafio -----------------------------------------------------------------
#
# Você recebeu os dados de vendas da última semana de uma pequena loja:
#
# produto <- c("Camiseta", "Calça", "Tênis", "Boné", "Mochila")
# preco <- c(50, 120, 250, 35, 180)
# quantidade <- c(20, 10, 5, 15, 7)
#
# Seu desafio é:
#
# • Transformar os dados em um data frame
#
# • Criar uma nova coluna chamada total_vendido,
#   que seja o resultado de preco * quantidade para cada produto
#
# • Descobrir:
#   - Qual produto gerou mais receita?
#   - Qual produto teve a maior quantidade vendida?
#   - Qual foi o total arrecadado pela loja com todos os produtos?
#
# Use as funções que aprendeu na aula!


produto <- c("Camiseta", "Calça", "Tênis", "Boné", "Mochila")
preco <- c(50, 120, 250, 35, 180)
quantidade <- c(20, 10, 5, 15, 7)

vendas_df <- data.frame(produto, preco, quantidade)

vendas_df$total_vendido <- vendas_df$preco * vendas_df$quantidade

prod_mais_receita <- vendas_df$produto[which.max(vendas_df$total_vendido)]
cat("O produto que gerou mais receita foi:", prod_mais_receita)

prod_mais_qtd <- vendas_df$produto[which.max(vendas_df$quantidade)]
cat("O produto que teve maior quantidade foi:", prod_mais_qtd)

faturamento_total <- sum(vendas_df$total_vendido)
cat("Faturamento Total: R$", faturamento_total)
