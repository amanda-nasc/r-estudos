
# while -------------------------------------------------------------------

cupons <- 10

while (cupons >= 0) {
  cat("Cupons disponíveis: ", cupons, "\n")
  cupons <- cupons - 1
}

#exemplo com if
cupons <- 10

while (cupons >= 0) {
  cat("Cupons disponíveis: ", cupons, "\n")
  cupons <- cupons - 1
  if (cupons == 5) {
    print("Você já gastou metade dos cupons!")
  }
}


# for ---------------------------------------------------------------------

vendas_joao <- c(12, 18, 15, 11, 28)

# Opção 1
for (venda in vendas_joao) {
  print(venda)
  
}

# Opção 2
for ( i in 1:length(vendas_joao)){
  print(vendas_joao[i])
}

#exemplo com for
for (venda in vendas_joao){
  if (venda > 12) {
    print("Mandou bem!")
  } else {
    print("Mandou mal!")
  }
  print(venda)
}

# next - pula para próxima execução
for (venda in vendas_joao) {
  if(venda == 15) {
    next #pula
  }
  print(venda)
}


# break - interrompe a execução
for (venda in vendas_joao) {
  if(venda < 12) {
    print("Mandou muito mal. Você está demitido!")
    break #para de executar
  }
  print(venda)
}


# Desafio -----------------------------------------------------------------

# Você tem um data frame com os nomes dos vendedores e o total de vendas em reais de cada um. 
# Seu objetivo é calcular a comissão de cada vendedor:

# - Vendas acima de 10.000 -> 12%
# - Vendas acima de 7.000 -> 10%
# - Vendas acima de 5.000 -> 7%
# - Vendas até 5.000 -> 0%

# Crie uma nova coluna no data frame com o valor da comissão para cada vendedor.

# Dados iniciais:
# vendedores <- c("Ana", "Bruno", "Carlos", "Daniela", "Eduardo")
# vendas <- c(12000, 8000, 4500, 10000, 6000)
# df <- data.frame(vendedores, vendas)

# Dicas:
# - Use for (i in 1:nrow(df)) para pegar a posição de cada venda do data frame.
# - Use if, else if e else para passar as condições de cada comissão.


vendedores <- c("Ana", "Bruno", "Carlos", "Daniela", "Eduardo")
vendas <- c(12000, 8000, 4500, 10000, 6000)

df <- data.frame(vendedores, vendas)

for ( i in 1:nrow(df)) {
    if ( df$vendas[i] > 10000) {
    comissao <- 0.12 * df$vendas[i]
  } 
    else if ( df$vendas[i] > 7000){
    comissao <- 0.10 * df$vendas[i]
  } 
  else if ( df$vendas[i] > 5000){
    comissao <- 0.07 * df$vendas[i]
  } 
    else {
    comissao <- 0
  }
  df$comissao[i] <- comissao
}


