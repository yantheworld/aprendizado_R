# 1. O data frame milhas que acompanha o pacote dados contém observações 234 coletadas pela Agência 
#de Proteção Ambiental dos EUA em modelos de 38 carros. 
# Quais variáveis em milhas são categóricas? 
# Quais variáveis são numéricas? (Dica: digite ?milhas para ler a documentação do conjunto de dados.) 
# Como você pode ver essas informações ao executar milhas?

view(milhas)
glimpse(milhas)

?milhas

# 1 - 6 variaveis categoricas e 5 numericas
# 2 - cilindrada, ano, cilindros, cidade, rodovia.
# 3 - Aparece no topo da tabela ao carregar os dados. Também é possível utilizar
#funções que mostrem o tipo de dado.



#2 Faça um gráfico de dispersão de rodovia (Milhas rodoviárias por galão) em função de cilindrada
#usando o data frame milhas.

ggplot(data = milhas,
       mapping = aes(x = cilindrada, y = rodovia, color = ano))+
  geom_point()

ggplot(data = milhas,
       mapping = aes(x = cilindrada, y = rodovia, size = ano))+
  geom_point()

ggplot(data = milhas,
       mapping = aes(x = cilindrada, y = rodovia, color = ano, size = ano))+
  geom_point()

ggplot(data = milhas,
       mapping = aes(x = cilindrada, y = rodovia, color = ano, size = ano, shape = classe, linewidth = 60))+
  geom_point()


# profundidade bico vs especie
ggplot(data = pinguins,
       mapping = aes(x = profundidade_bico, y = comprimento_bico, color = especie, shape = especie))+
  geom_point()+
  facet_wrap(~especie)

#resolve
ggplot(data = pinguins,
  mapping = aes(
    x = comprimento_bico, y = profundidade_bico, shape = especie, color = especie)) +
  geom_point() +
  labs(color = "especie")

ggplot(milhas, aes(x = classe)) +
  geom_bar()
ggplot(milhas, aes(x = cidade, y = rodovia)) +
  geom_point()
ggsave("testes.pdf")
