
# O que é uma função? -----------------------------------------------------

# É um bloco de código reutilizável para executar uma tarefa específica


# Estrutura de uma Função -------------------------------------------------

print("Olá, Amanda")

# Argumentos
args(sample)

# Páginas de Ajuda
?sample

dado <- 1:6

# a função sample 'embaralha' os números e exibe
sample(dado) 

# para exibir o código da função:
body(sample)

# se vc quiser embaralhar e 'sortear' apenas 1 numero, deve especificar em size = 1
sample(dado, size = 1)

# por padrão o sample não repete os números, se vc quiser repetir deve especificar em replace = TRUE
# por exemplo, ao jogar dois dados, há a possibilidade de tirar o mesmo número

sample(dado, size = 2, replace = TRUE)

dados <- sample(dado, size = 2, replace = TRUE)
sum(dados)


# Funções Personalizadas --------------------------------------------------

dados <- sample(dado, size = 2, replace = TRUE)
sum(dados)

jogar_dados <- function(dado = 1:6) {
  dados <- sample(dado, size = 2, replace = TRUE)
  sum(dados)  
}



# Desafio -----------------------------------------------------------------

sorteio <-  1:5

sample(sorteio, size = 1, prob = c(1, 1, 0, 1, 1))