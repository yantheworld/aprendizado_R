###############################################################################
# Capítulo 1 ----------------------------------------------------------------

#Reescrevendo o gráfico anterior de forma mais concisa:

ggplot(pinguins, aes(x = comprimento_nadadeira, y = massa_corporal))+
  geom_point()

#testando utilizando pipe

pinguins |> 
  ggplot(aes(x = comprimento_nadadeira, y = massa_corporal)) + 
  geom_point()

#testando variáveis categóricas

ggplot(pinguins, aes(x = especie))+
  geom_bar()

#testando variáveis continuas em um histograma

ggplot(pinguins, aes(x = massa_corporal))+
  geom_histogram(binwidth = 200)

#testando a modificação das barras utilizando o binwidth
ggplot(pinguins, aes(x = massa_corporal))+
  geom_histogram(bindwidth = 20)

#o mesmo gráfico alterando o tamanho da barra
ggplot(pinguins, aes(x = massa_corporal))+
  geom_histogram(binwidth = 2000)

#Outra função 
ggplot(pinguins, aes(x = massa_corporal))+
  geom_density()

# Testando bloxpot R
ggplot(pinguins, aes(x = especie, y = massa_corporal))+
  geom_boxplot()

# Teste graficos de densidade
ggplot(pinguins, aes(x = massa_corporal, color = especie))+
  geom_density(linewidth = 0.75)

#criando o mesmo gráfico, agora botando cores no fundo
ggplot(pinguins, aes(x = massa_corporal,color = especie, fill  = especie))+
  geom_density(alpha = 0.5)

#mostra a frequencia de pinguins em cada ilha
ggplot(pinguins, aes(x = ilha, fill = especie))+
  geom_bar()

#relação entre duas variaveis numericas
ggplot(pinguins, aes(x = comprimento_nadadeira, y = massa_corporal))+
  geom_point()

#dois exemplos
ggplot(pinguins, aes(comprimento_nadadeira, y = massa_corporal))+
  geom_point(aes(color = especie, shape = ilha))

#maneira mais pratica varios graficos
ggplot(pinguins, aes(comprimento_nadadeira, y = massa_corporal))+
  geom_point(aes(color = especie, shape = ilha))+
  facet_wrap(~ilha)
