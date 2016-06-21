# /*
#' Commented line in spin() to generate report
knitr::spin("jsonlite.R")
# */

#' # jsonlite: Leer y escribir json

library(jsonlite)
library(httr)



#' ## Leer json desde un texto

txt <- "[12, 3, 7]"
x <- fromJSON(txt)
x


#' ## Leer json desde URL
#'
#' También lee dataframes directamente

d <- fromJSON("https://api.github.com/users/hadley/orgs")
#it's a data frame
str(d)
names(d)

#' > Ojo puede haber data.frames no puros... donde las "celdas" son vectores o también data.frames. Esto puede ser problemático al usar otras funciones sobre los data.frames.

d <- fromJSON("https://api.github.com/users/hadley/repos")
#it's a data frame...
names(d)
d$name
#... it has a nested data frame
names(d$owner)
str(d)
d$owner
str(d$owner)

#' ## Tip: Usar unbox


#' ## Serialization




