# Nome dos objetos/variáveis ----------------------------------------------

# Os nomes devem começar com uma letra. Podem conter letras, números, _ e .
# É recomendado usar snake_case.

eu_uso_snake_case
outrasPessoasUsamCamelCase
algumas.pessoas.usam.pontos
E_algumasPoucas.Pessoas_RENUNCIAMconvenções


# Criando objetos/variáveis -----------------------------------------------

obj <- 1 # no windows há um atalho de alt - para a setinha
obj 

# CTRL + ENTER
# ATALHO: ALT - (alt menos)

# Vetores -----------------------------------------------------------------

1:10 #isso eh um vetor no R

vetor <- 1:10
vetor[1] #indexa a partir do 1
c(1, 2, 3)
c(1, 2, 3, 1:10) #concatena dois vetores


# Tipos -------------------------------------------------------------------

# Numéricos (numeric)

# Caracteres (character, strings)

obj <- "a" #recebendo uma string
obj2 <- a

# Bases (data.frame)

#guardara nossas bases de dados

mtcars

tibble::as_tibble(mtcars) #data.frame melhorado

class() #mostra a classe do seu objeto

# Pacotes -----------------------------------------------------------------

install.packages(c("tidyverse", "rmarkdown", "devtools"))
devtools::install_github("rstudio/flexdashboard") #util quando dois ou mais pacotes possuem funcoes
#com mesmo nome. Isso deixa o seu codigo menos sucetivel a erros.

install.packages("tidyverse")

library(dplyr)
library(ggplot2)

# Funções -----------------------------------------------------------------

seq(to = 10, from = 1, by = 2)#nome da funcao seq com seus argumentos definidos explicitamente

mean(seq(1, 10, 2)) #tira a média dos valores gerados pela função seq exemplo de função dentro da função

y <- seq(1, 10, length.out = 5)# gera uma sequencia de 1 a 10 
y

minha_soma <- function(x, y) {
  #criando minha propria funcao
  x + y #se fizer a = x + y preciso do return(a)
  #return(a)
}

minha_soma(x = 1, y = 2)
minha_soma(1, 2)


# Valores especiais -------------------------------------------------------

# Existem valores reservados para representar dados faltantes, 
# infinitos, e indefinições matemáticas.

NA   # (Not Available) significa dado faltante/indisponível. 
#deveria existir algo aqui mas não o conheco

idade_joao = NA
idade_maria = 30
idade_joao == idade_maria # retorna NA o que mantem a consistencia pois NA significa um dado faltante e/ou indisponivel então não consigo retornar nem true e nem false para essa pergunta

NaN  # (Not a Number) representa indefinições matemáticas, como 0/0 e log(-1). 
# Um NaN é um NA, mas a recíproca não é verdadeira.

Inf  # (Infinito) é um número muito grande ou o limite matemático, por exemplo, 
# 1/0 e 10^310. Aceita sinal negativo -Inf.

NULL # representa a ausência de informação.
#util para tratar casos em que deveria aparecer alguma coisa coisa mas caso essa coisa não apareça eu posso usar o null para representar isso
#muito util em controle de uso de funcoes

# Use as funções is.na(), is.nan(), is.infinite() e is.null() 
# para testar se um objeto é um desses valores.

# Identação ---------------------------------------------------------------

funcao_com_muitos_argumentos(argumento_1 = 10, 
                             argumento_2 = 14, 
                             argumento_3 = 30, 
                             argumento_4 = 11)

#sempre colocar eles de forma organizada um embaixo do outro
#Apertar crtl i ele identa automaticamente o seu comando

# OLHAR O R STYLE GUIDE! Para saber as boas práticas de programação no R

# ATALHO: CTRL+I

# Pipe (%>%) --------------------------------------------------------------
# f(g(a)) usando pipe temos a %>% g() %>% f()
#a %>% g(x= 1, y = .) %>% f() O PONTO INDICA ONDE O OBJETO a DEVE ENTRAR NA FUNÇÃO
# %>% %>% %>% %>% %>% %>% %>% %>% %>% %>% %>% %>% %>% %>% %>% %>% 
# Receita de bolo sem pipe. Tente entender o que é preciso fazer.

esfrie(
  asse(
    coloque(
      bata(
        acrescente(
          recipiente(
            rep(
              "farinha", 
              2
            ), 
            "água", "fermento", "leite", "óleo"
          ), 
          "farinha", até = "macio"
        ), 
        duração = "3min"
      ), 
      lugar = "forma", tipo = "grande", untada = TRUE
    ), 
    duração = "50min"
  ), 
  "geladeira", "20min"
)

# Veja como o código acima pode ser reescrito utilizando-se o pipe. 
# Agora realmente se parece com uma receita de bolo.

recipiente(rep("farinha", 2), "água", "fermento", "leite", "óleo") %>%
  acrescente("farinha", até = "macio") %>%
  bata(duração = "3min") %>%
  coloque(lugar = "forma", tipo = "grande", untada = TRUE) %>%
  asse(duração = "50min") %>%
  esfrie("geladeira", "20min")


# ATALHO: CTRL + SHIFT + M


# Cheatsheets -------------------------------------------------------------

# Menu help -> cheatsheets


# Controle de fluxo -------------------------------------------------------

# ctrl + shift + r cria essas sessões ou separacoes ao longo do código
#exemplos de tipos de lacos que podemos criar
if(a == 1){}
if(a >2){}
if(a <= 1){}
if(a != 'sim'){
  obj1 = 1
  return(obj1 + 10)
} #se a é diferente de 'sim'
if(!is.na(a)){
  "ele não é NA"
} else{
  "ele é NA"
}#se a não for NA faça isso

vetor = 1:30
ifelse(vetor < 20, "cat1", "cat2") #categoriza minhas variave4is MUITO UTIL

for (i in vetor){
  print(paste("palavra", i))
} #fazendo iteração no R

i = 1
while(i < 10){ #aqui preciso aumentar o i explicitamente
  print(paste("palavra", i))
  i = i + 1
}
