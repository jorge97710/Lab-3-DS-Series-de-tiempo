##setwd("C:/Users/jazmi/OneDrive/Documentos/GitHub/Lab-3-DS-Series-de-tiempo")

# install.packages("forecast")
# install.packages("fUnitRoots")
# install.packages("ggfortify")

library(forecast)
library(tseries)
library(fUnitRoots)
library(ggfortify)
library(ggplot2)
data <- read.csv(file="datosimp.csv", header=TRUE)

View(data)
class(data)

##graficos 

summary(data)
barplot(table(data$Anio),main = "Cantidad segun año")
barplot(table(data$Mes),main = "Cantidad segun mes")

qplot(data$GasAviacion, geom="histogram",main = "Histograma de glp") 
qqnorm(data$GasAviacion, main = "GLP", col = 2)
qqline(data$GasAviacion, col = 3)

qplot(data$GasSuperior, geom="histogram",main = "Histograma de glp") 
qqnorm(data$GasSuperior, main = "GLP", col = 2)
qqline(data$GasSuperior, col = 3)

qplot(data$GasRegular, geom="histogram",main = "Histograma de glp") 
qqnorm(data$GasRegular, main = "GLP", col = 2)
qqline(data$GasRegular, col = 3)

qplot(data$Kerosina, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Kerosina, main = "GLP", col = 2)
qqline(data$Kerosina, col = 3)

qplot(data$rTurboJet, geom="histogram",main = "Histograma de glp") 
qqnorm(data$rTurboJet, main = "GLP", col = 2)
qqline(data$rTurboJet, col = 3)

qplot(data$Diesel, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Diesel, main = "GLP", col = 2)
qqline(data$Diesel, col = 3)

qplot(data$DieselLSl, geom="histogram",main = "Histograma de glp") 
qqnorm(data$DieselLS, main = "GLP", col = 2)
qqline(data$DieselLS, col = 3)

qplot(data$DieselULS, geom="histogram",main = "Histograma de glp") 
qqnorm(data$DieselULSl, main = "GLP", col = 2)
qqline(data$DieselULSl, col = 3)

qplot(data$Bunker, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Bunker, main = "GLP", col = 2)
qqline(data$Bunker, col = 3)

qplot(data$Asfalto, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Asfalto, main = "GLP", col = 2)
qqline(data$Asfalto, col = 3)

qplot(data$PetCoke, geom="histogram",main = "Histograma de glp") 
qqnorm(data$PetCoke, main = "GLP", col = 2)
qqline(data$PetCoke, col = 3)

qplot(data$AceitesLub, geom="histogram",main = "Histograma de glp") 
qqnorm(data$AceitesLub, main = "GLP", col = 2)
qqline(data$AceitesLub,col = 3)

qplot(data$gGrasasLub, geom="histogram",main = "Histograma de glp") 
qqnorm(data$GrasasLub, main = "GLP", col = 2)
qqline(data$GrasasLub, col = 3)


qplot(data$Solventes, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Solventes, main = "GLP", col = 2)
qqline(data$Solventes, col = 3)

qplot(data$Naftas, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Naftas, main = "GLP", col = 2)
qqline(data$Naftas, col = 3)

qplot(data$Ceras, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Ceras, main = "GLP", col = 2)
qqline(data$Ceras, col = 3)

qplot(data$Butano, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Butano, main = "GLP", col = 2)
qqline(data$Butano, col = 3)

qplot(data$PetroleoReconst, geom="histogram",main = "Histograma de glp") 
qqnorm(data$PetroleoReconst, main = "GLP", col = 2)
qqline(data$PetroleoReconst, col = 3)

qplot(data$MTBE, geom="histogram",main = "Histograma de glp") 
qqnorm(data$MTBE, main = "GLP", col = 2)
qqline(data$MTBE, col = 3)

qplot(data$Orimulsion, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Orimulsion, main = "GLP", col = 2)
qqline(data$Orimulsion, col = 3)

qplot(data$MezclasOleosas, geom="histogram",main = "Histograma de glp") 
qqnorm(data$MezclasOleosas, main = "GLP", col = 2)
qqline(data$MezclasOleosas, col = 3)

qplot(data$Total, geom="histogram",main = "Histograma de glp") 
qqnorm(data$Total, main = "GLP", col = 2)
qqline(data$Total, col = 3)


##juntando cuantitativas para matriz correlacion

cuantitativa <- data[,-1]
cuantitativa <- cuantitativa[,-1]
View(cuantitativa)

cor(cuantitativa)














