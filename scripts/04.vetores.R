
# O que são vetores? ------------------------------------------------------

# São estruturas de dados unidemensionais com elementos do mesmo tipo


# Criação de Vetores ------------------------------------------------------
# parecido com criar variável
# usamos a função c() , o c é de concatenar

vetor_num <- c(1, 2, 3, 4, 5)

seq_1 <- 1:5 # da mesma forma cria o vetor de 1 a 5, mais rápido e fácil

# também é possível utilizar a função seq() para criar sequencias
seq_2 <- seq(from = 1, to = 100)

# sequencia com intervalos
seq_3 <- seq(from = 1, to = 100, by = 2)


vetor_char <- c("a", "b", "c")

vetor_log <- c(TRUE, FALSE, FALSE)

# Como Nomear Vetores? ----------------------------------------------------

vendas_joao <- c(15, 12, 25, 32, 60)
vendas_maria <- c(16, 18, 25, 22, 72)

# para nomear o vetor, eu posso usar a função names:
names(vendas_joao) <- c("Seg", "Ter", "Qua", "Qui", "Sex")

# também posso criar uma variável para os dias da semana, fica mais fácil pra nomear vários vetores

dias <- c("Seg", "Ter", "Qua", "Qui", "Sex")

names(vendas_maria) <- dias


# Operações com Vetores ---------------------------------------------------

#Calcular vendas diárias
vendas_diarias <- vendas_joao +  vendas_maria # vai somar cada elemento dos dois vetores

# Calcular total e média de cada um
total_joao <- sum(vendas_joao)
media_joao <- mean(vendas_joao)

total_maria <- sum(vendas_maria)
media_maria <- mean(vendas_maria)

# Resumo Estatistico
summary(vendas_joao)
summary(vendas_maria)

# Comparar vetores
vendas_joao > vendas_maria # retorna um vetor logico, que mostra quando o joao vendeu mais que maria


# Acessando Elementos de um Vetor -----------------------------------------

# quanto que vendeu na quarta-feira?
vendas_joao[3] 
vendas_maria["Qua"]


# Manipulação de Vetores --------------------------------------------------
#alterar um elemento que já existe
vendas_joao["Qua"] <- 35

#adicionar novo elementro
vendas_joao["Sab"] <- 75


# Desafio -----------------------------------------------------------------

# Você trabalha em uma loja de eletrônicos e precisa analisar o estoque de cinco produtos.
# Cada produto tem uma quantidade disponível, e seu gerente pediu um relatório simples
# para avaliar quais produtos precisam de uma reposição de estoque.
# O mínimo é de 15 unidades por produto.
#
# Seu desafio é:
# - Criar os vetores necessários.
# - Criar a variável com o limite mínimo.
# - Nomear os elementos do vetor.
# - Descobrir quantos itens há no estoque no total.
# - Identificar qual produto precisa de reposição.
#
# Dados do estoque:
# - Notebook: 12 unidades
# - Smartphone: 16 unidades
# - Tablet: 28 unidades
# - Fone de ouvido: 8 unidades
# - Carregador: 18 unidades
#
# Dica: Utilize names(), sum() e o operador < para resolver o desafio.

estoque_prod <- c(12, 16, 28, 8, 18)

produtos <- c("Notebook", "Smartphone", "Tablet", "Fone de ouvido", "Carregador")

names(estoque_prod) <- produtos

estoque_min <- 15

estoque_total <- sum(estoque_prod)

prod_reposicao <- estoque_prod < estoque_min

prod_reposicao <- names(estoque_prod[prod_reposicao])

cat("Os produtos que precisam de reposição são:", paste(prod_reposicao, collapse = " , "))
