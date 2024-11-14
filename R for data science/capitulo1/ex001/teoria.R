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
