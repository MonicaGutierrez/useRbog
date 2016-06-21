#' # jsonlite: Leer y escribir json

library(jsonlite)
library(httr)



#' ## Leer json desde un texto

txt <- "[12, 3, 7]"
x <- fromJSON(txt)
x


#' # Obtener datos
#get data
d <- fromJSON("https://api.github.com/users/hadley/orgs")

str(d)

#it's a data frame
names(d)
d$login

d <- fromJSON("https://api.github.com/users/hadley/repos")

#it's a data frame...
names(d)
d$name

#...with has a nested data frame
names(d$owner)
str(d)
d$owner
str(d$owner)





