# Atenção: para trabalhar com conjuntos de dados diferentes, substitua os argumentos das funções
# ver diretório
getwd()
# escolher diretório
setwd("~/Desktop/Everything R")
# instalar um conjunto de pacotes que vamos usar no curso
install.packages(c("rpart", "chron", "Hmisc", "Matrix", "lme4", "Design", "coda", "e1071", "zipf", "ape","languageR"), repos = "http//cran.r-project.org")install.packages(pkgs = file.choose(), repos = NULL, type = "source")
# instalar um pacote específico 
install.packages("dplyr")
# atualizar um pacote
update.packages("dplyr")
# informações sobre o pacote
help(package = dplyer)
# importar dados do excel
library(readxl)
nulo <- read_excel("nulo.xlsx", sheet = "nulo", range = "A1:D133", col_types = c("text", "numeric", "text", "numeric"))
# carregar dados
data(nulo)
# ver tabela com os dados
View(nulo)
# acesso ao conjunto de dados ldt do pacote Rling
install.packages("modeest")
library(Rling)
data(ldt)
View(ldt)
# ver número de variáveis do conjunto de dados, número de observações e tipo de variável
str(ldt)
# medidas fundamentais dos dados
summary(ldt)
# ver apenas as primeiras 20 linhas dos dados
head(ldt, n = 20)
# armazenar objetos a <- b
16^(1/4)*(12+18)/(211 + 9)16^(1/4)*(12+18)/(211 + 9)
a <- 16^(1/4)*(12+18)/(211 + 9)
a
a + (12/15)*756
# vetores
a <- c(1,2,3,4,5)
a <- c("cat", "dog", "horse", "tiger", "bear")
# para selecionar uma variável use $. Ex: ldt$Length, em que Length é a variável do banco de dados ldt
# Média
mean(ldt$Length)
#Mediana
median(ldt$Length)
#Moda
library(modeest)
mlv(ldt$Lenght)
#Quartis
quantile(ldt$Length)
#Amplitude
range(ldt$Length)
#Variância
var(ldt$Length)
#Desvio Padrão
sd(ldt$Length)
#Intervalo interquartil (IQR)
IQR(ldt$Length)
#Histograma 
hist(ldt$Mean_RT, main = "Histogram of Mean Reaction Times", xlab = "reaction times, ms")
#Histograma com uma cor
hist(ldt$Mean_RT, main = "Histogram of Mean Reaction Times", xlab = "reaction times, ms", col = lightblue)
#Histograma com mais de uma cor
hist(ldt$Mean_RT, main = "Histogram of Mean Reaction Times", xlab = "Reaction Times, ms", col = c("lightyellow1", "moccasin", "mistyrose2"))
#Histograma com ggplot2
ggplot(data = ldt, aes(x = Mean_RT)) + geom_histogram(bins = 7, fill = "lightblue")
#Gráfico de densidade
plot(density(ldt$Mean_RT), main = "Density plot of mean reaction times", xlab = "reaction times, ms") 
#Gráfico de densidade com gglopt2
a <- ggplot(data = ldt, aes(x = Mean_RT)) + geom_density(fill = "lightgreen")
a + labs (title="Density Plot for Mean Reaction Times",x ="Mean Reaction Times")
#Para centralizar o título do gráfico
theme_update(plot.title = element_text(hjust = 0.5))
a + labs (title="Density Plot for Mean Reaction Times",x ="Mean Reaction Times") 
#Boxplot comparando dois grupos
p <- ggplot (ratings, aes(x = Class, y = Frequency, fill = Class)) + geom_boxplot() + theme(axis.title.x = element_blank()) + scale_x_discrete (breaks = NULL)
p + labs (title= "Frequency of Semantic Classes",x ="Semantic Class")
#tabela de contingência com 1 fator
library(languageR)
data(verbs)
xtabs(~ RealizationOfRec + AnimacyOfRec, data = verbs)
#tabela de contingência com 2 fatores
xtabs(~ RealizationOfRec + AnimacyOfTheme + RealizationOfRec, data = verbs)
#desconsiderar um dos níveis de um fator
verbs.xtabs = xtabs(~ RealizationOfRec + AnimacyOfTheme + RealizationOfRec, data = verbs, subset = AnimacyOfTheme != "animate")
verbs.xtabs
#gráfico de barra
data(sent)
ggplot(sent, aes(x = clause)) + geom_bar(fill = "lightblue", colour = "black") + xlab("Clause type") + ylab("Frequency")
#gráfico de mosaico
mosaicplot(verbs.xtabs, main = "dative", col = c("lightblue", "lightpink"))
#gráfico de dispersão
ggplot(ldt, aes(x = Mean_RT, y= Length)) + geom_point()
#gráfico de dispersão com linha de regressão e cor
ggplot(ldt, aes(x = Mean_RT, y= Length)) + geom_smooth (method = "lm") + geom_point (colour = 4)
