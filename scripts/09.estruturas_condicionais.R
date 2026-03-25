
# Operadores Relacionais --------------------------------------------------

x <- 10
y <- 7

x == y #igual
x != y #diferente
x > y #maior
x >= y #maior ou igual
x < y #menor
x <= y #menor ou igual

# Operadores Lógicos ------------------------------------------------------

# "E" (&) - as duas expressões devem ser verdadeiras para retornar TRUE
TRUE & TRUE #verdadeiro
TRUE & FALSE #falso
FALSE & TRUE #falso
FALSE & FALSE #falso

# "OU" (|) - uma única expressão deve ser verdadeira para retornar TRUE
TRUE | TRUE #verdadeiro
TRUE | FALSE #verdadeiro
FALSE | TRUE #verdadeiro
FALSE | FALSE #falso

# "NÃO" (!) - retorna o contrário da expressão
!TRUE #falso
!FALSE #verdadeiro

# Estruturas Condicionais -------------------------------------------------

vendas <- 5000
meta <- 7000
novos_clientes <- 4

#if
if (vendas >= meta) {
  print("Parabéns! Você bateu a meta")
}

#else
if (vendas >= meta) {
  print("Parabéns! Você bateu a meta")
} else {
  print("Poxa! Você não bateu a meta")
}

#else if - permite criar várias condições

if( vendas >= meta & novos_clientes > 5) {
  comissao <- 0.10 * vendas
  cat("Incrível! Você bateu a meta e trouxe vários clientes, sua comissão é R$:", comissao)
} else if (vendas >= meta | novos_clientes > 5) {
  comissao <- 0.07 * vendas
  cat("Parabéns, você atinigiu um dos objetivos! Sua comissão é de R$:", comissao)
} else {
  print("Poxa! Você não atingiu nenhum objetivo")
}


# Desafio ------------------------------------------------------------------

# Você trabalha numa plataforma de streaming e precisa criar uma verificação para liberar 
# ou não o acesso de um usuário a um filme com restrição de idade.

# Use os seguintes dados:
# idade <- 17
# tem_autorizacao <- TRUE

# As regras são:
# - Para assistir ao filme, o usuário deve ter 18 anos ou mais, ou ter uma autorização dos responsáveis.
# - Se ele puder assistir, exiba: "Acesso liberado! Boa sessão."
# - Se ele não puder assistir, exiba: "Acesso negado!"

# Seu desafio é:
# Escrever o código que usa operadores lógicos e estruturas condicionais para decidir se o 
# acesso será liberado ou não.

idade <- 17
tem_autorizacao <- TRUE

if ( idade >= 18 | tem_autorizacao == TRUE){
  print("Acesso liberado! Boa sessão.")
} else{
  print("Acesso negado!")
}