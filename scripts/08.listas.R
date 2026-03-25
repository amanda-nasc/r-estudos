
# O que são listas? -------------------------------------------------------

# São estruturas de dados que podem armazenar elementos de diferentes tipos e tamanhos,
# inclusive outros vetores, matrizes, data frames e até outras listas


# Criação de Listas -------------------------------------------------------

vetor <- seq(from = 0, to = 100, by = 10)
matriz <- matrix(1:9, nrow = 3, byrow = TRUE)
df <- mtcars[1:10, ]

lista <- list(Vetor = vetor, Matriz = matriz, Data_Frame = df)

# Acessando Elementos de uma Lista ----------------------------------------

# lista[[1]]
lista[["Vetor"]]

lista[["Vetor"]][5] # consulta a coluna 5 do vetor

lista$Vetor[5] # também podemos fazer assim

lista$Matriz[2, 2] # exibir o elemento da 2 linha e 2 coluna da matriz

lista$Data_Frame[8:10, ] # 3 ultimos linhas, todas as colunas


# Manipulação de Listas ---------------------------------------------------

# adicionando elementos
lista$Fator <- factor(sample(c("Azul", "Vermelho", "Verde"), size = 15, replace = TRUE))

# remover elementos
lista$Fator <- NULL


# Desafio -----------------------------------------------------------------

# Vamos praticar a criação e manipulação de listas!

# Seu desafio é:
# - Criar uma lista chamada minha_lista com os seguintes elementos:
#   - Seu nome.
#   - Sua idade.
#   - Sua cidade.
#   - Um vetor com 3 linguagens de programação que você conhece.

# - Adicionar um novo elemento chamado hobbie com um valor à sua escolha (ex: "Fotografia").

# - Remover o elemento hobbie da lista.

# - Exibir a lista final no console.

minha_lista <- list(
  nome = "Amanda",
  idade = 31,
  cidade = "Bauru",
  linguagens = c("R", "Python", "SQL")
)

minha_lista$hobbies <- "Corrida"

minha_lista$hobbies <- NULL

print(minha_lista)
