library(readr)
library(tidyr)
library(dplyr)

population <- read.csv("D:/Random/DATA/tidy/population.csv", sep=";")
Religion <- read_csv2("C:/Users/Camila/Dropbox/r-intro/tidy/pew.csv")
Clima <- read_tsv("C:/Users/Camila/Desktop/presentation/DATA/tidy/weather.txt", na = ".")

####TIDYR


#Pasar ancho a largo con gather


#Base población cuya cusa de muerte es la tuberculosis

#Opción uno:

pl1 <- population %>%
                 gather(mes_edad, n, m_04:f_65 )
head(pl1)


#Opción dos:
pl2 <- population %>%
                  gather(mes_edad, n, -iso2, -year)
head(pl2)

# Base clima

Cl1 <- Clima %>%
             gather(dias, conteo, `1`:`31`, na.rm = TRUE)
tbl_df(Cl1)


Cl2 <- Clima %>%
  gather(dias, conteo, `1`:`31`, na.rm = FALSE)
head(Cl2)

Cl2 <- Clima %>%
  gather(dias, conteo,-year,-month,-element , na.rm = FALSE)
head(Cl2)

#Ejercicio: Pasar a formato tidyr la Base religión (Columna con los ingresos)




