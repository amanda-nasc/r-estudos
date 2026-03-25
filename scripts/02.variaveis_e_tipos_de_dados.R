
# Atribuição de Variáveis ------------------------------------------------

x = 10 # o sinal de igual é usado em outras ocasiões por isso é comum ver outro sinal na atribuição de variaveis
y <- 7 # esse sinal é mais comum para atribuir variáveis ( atalho: ALT - )

print(x)

# Operações com Variáveis -------------------------------------------------

uvas <- 18
laranjas <- 22
frutas <- uvas + laranjas

print(frutas)

# Nomeação de Variáveis ---------------------------------------------------

# Deve começar com uma letra ou com um ponto (.) seguido de uma letra
# Pode conter letras, numeros, pontos (.) e underlines (_)
# Não pode conter espaços ou outros símbolos ($, %, &, - etc.)
# Não pode ser uma palavra reservada (if, print, TRUE etc.)
# São case-sensitive -> idade, Idade e IDADE são variáveis diferentes


nome <- "Amanda"
.idade <- 31 # ponto (.) torna a variável oculta
# .1idade <- 31 # não pode
fruta_favorita <- "banana"
# fruta favorita <- "banana"
# fruta-favorita <- "banana"
# if <- 15
idade <- 30
Idade <- 15
IDADE <- 10


# Tipos de Dados ----------------------------------------------------------

#Numeric
decimal <- 4.5
inteiro <- 4
valor <- 4L #comum esse L pra especificar que é uma valor INTEIRO

class(decimal)
class(inteiro)
class(valor)

# Character
texto <- "amanda"
numero_texto <- "4"
class(texto)

# Logical
logico_1 <- TRUE
logico_2 <- FALSE
class(logico_1)


# Desafio -----------------------------------------------------------------

valor_inicial <- 150
valor_recebido <- 1000
valor_gasto <- 200

saldo_final <- (valor_inicial + valor_recebido) - valor_gasto

print(saldo_final)
