#Como fazer um gráfico de Venn
##Sintaxe
install.packages("VennDiagram")
install.packages(grid)
install.packages(gridExtra)
library("VennDiagram")
library(grid) 
library("gridExtra")
x <- draw.pairwise.venn(area1=number, area2=number, cross.area=number, fill = c("color1","color2"), cat.pos = c(degree, degree), lty="color", category = c("label", "lable"))
grid.arrange(gTree(children=x), top= "title")
##Funções
###area: valor de cada conjunto
###cross.area: valor da intersecção
###fill: cores dos conjuntos     #paleta de cores com códigos: http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
###cat.pos: posição da legenda em graus, de 0 à 360
###lty: cor da linha dos conjuntos
###category: nome de cada conjunto
###gTree(children): nome do vetor que você criou
###top: título
#Examplo
#Para conjuntos não disjuntos
x <- draw.pairwise.venn(area1=60, area2=35, cross.area=5, fill = c("azure3","antiquewhite1"), cat.pos = c(0, 0), lty="blank", category = c("Dog person", "Cat person"))
#Para conjuntos disjuntos
x <- draw.pairwise.venn(area1=65, area2=35, cross.area=0, fill = c("azure3","antiquewhite1"), cat.pos = c(0, 0), lty="blank", category = c("Dog person", "Cat person"))
#Inserir título no gráfico
grid.arrange(gTree(children=x), top= "Dog vs. Cat Person in the World")