# Code golf: 18 Líneas asesinos seriales

El script [dataprep.R](dataprep.R) descarga unos datos y los limpia para guardarlos en el archivo [serial-killers-clean.csv](serial-killers-clean.csv).

El objetivo es leer crear un script y con tan solo 20 líneas hacer un análisis de datos (sin hacer trampa con one-liners de más de 80 caracteres). 

Ejemplo (5 líneas):

```{r}
library(dplyr)
# Calcula el total de víctimas por país de nacimiento de los asesinos
d <- read.csv("serial-killers-clean.csv")
d %>% group_by(Country) %>% summarise(total = sum(victims)) %>%
  arrange(desc(total)) %>% select(Country, total)

```










