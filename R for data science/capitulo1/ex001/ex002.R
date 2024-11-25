#1 O nome das variáveis aparecem na esquerda do gráfico, enquanto no eixo X elas aparecem abaixo.

# Eixo Y
ggplot(pinguins,
       mapping = aes(y = especie))

#Eixo X
ggplot(pinguins,
       mapping = aes(x = especie))


#2 A primeira função pinta a borda do gráfico, enquanto a segunda o gráfico é totalmente colorido

ggplot(pinguins, aes(x = especie))+
  geom_bar(color = "red")

ggplot(pinguins, aes(x = especie))+
  geom_bar(fill = "red")

#3 O que o argumento bins em geo_hist faz?
# Muda o formato dos gráficos

ggplot(pinguins, aes(x = comprimento_bico))+
  geom_histogram(bins = 100)

#4 variavel quilates
# os intervalos entre 0.2 a 0.8 na função binwidth foram os melhores intervalos para esse gráfico
ggplot(diamante, aes(x = quilate))+
  geom_histogram(fill = "blue", binwidth = 0.5)

View(diamante)
glimpse(diamante)

#criar um QMD para essas questões.