install.packages("dados")
library(tidyverse)
library(dados)
library(ggthemes)

dados::pinguins
dados::diamante
dados::milhas

glimpse(pinguins)
view(pinguins)

??pinguins
?milhas

#Cria um grafico
ggplot(data = pinguins,
       mapping = aes(x = comprimento_nadadeira, y = massa_corporal)
       ) +
  geom_point(mapping = aes(colour = especie, shape = especie))+
  geom_smooth(method = "lm")+
  labs(
    title = "Massa corporal comprimento e nadadeira",
    subtitle = "Medidas para Pinguim-de-adélia, Pinguim-de-barbicha e Pinguim-gentoo",
    x = "Comprimento nadadeira (mm)",
    y = "Massa corporal (g)",
    color = "Espécie",
    shape = "Espécie",
  )+
  scale_color_colorblind()

#Grafico dispersão comprimento bico e profundidade bico
ggplot(data = pinguins,
       mapping = aes(y = profundidade_bico, x = comprimento_bico)
       )+
  geom_point(mapping = aes(colour = especie, shape = especie))+
  geom_smooth(method = "lm")


#Ajustando erro questão 5
ggplot(data = pinguins) + 
  (mapping = aes(x = sexo, y = ano))+
  geom_col(mapping = aes(colour = sexo, shape = especie))

  

#Ajustando geompoint com valores NA definidos como TRUE
ggplot(data = pinguins,
       mapping = aes(y = profundidade_bico, x = comprimento_bico))+
  geom_point(na.rm = TRUE)+
  labs(title = "Dados são provenientes do pacote dados")


#Recriando gráfico exercicio 08
ggplot(data = pinguins,
       mapping = aes(y = massa_corporal, x = comprimento_nadadeira))+
  geom_point(mapping = aes(colour = profundidade_bico))+
  geom_smooth(method = "lm")

#Questão 10
ggplot(
  data = pinguins,
  mapping = aes(x = comprimento_nadadeira, y = massa_corporal)
) +
  geom_point() +
  geom_smooth()


ggplot() +
  geom_point(
    data = pinguins,
    mapping = aes(x = comprimento_nadadeira, y = massa_corporal)
  ) +
  geom_smooth(
    data = pinguins,
    mapping = aes(x = comprimento_nadadeira, y = massa_corporal)
  )


