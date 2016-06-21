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

#' ## Leer desde un archivo

x <- fromJSON("data/meetup-members.json")
str(x)



#' ## Más lecturas desde texto


#' ### Vectores
fromJSON('["Mario", "Peach", null, "Bowser"]')
fromJSON('["Mario", "Peach", null, "Bowser"]', simplifyVector = FALSE)

#' ### Dataframes

json <-
  '[
{"Name" : "Mario", "Age" : 32, "Occupation" : "Plumber"},
{"Name" : "Peach", "Age" : 21, "Occupation" : "Princess"},
{},
{"Name" : "Bowser", "Occupation" : "Koopa"}
]'
fromJSON(json)
fromJSON(json, simplifyDataFrame = FALSE)

#' ### Matrices

json <- '[
  [1, 2, 3, 4],
[5, 6, 7, 8],
[9, 10, 11, 12]
]'
fromJSON(json)
fromJSON(json, simplifyMatrix = FALSE)

#' ### Arreglos de cualquier dimensión

json <- '[
   [[1, 2],
[3, 4]],
[[5, 6],
[7, 8]],
[[9, 10],
[11, 12]]
]'
myarray <- fromJSON(json)
myarray[1, , ]

#' ## Tip: Usar unbox

fromJSON('[1,2,3]')
toJSON(c(1,2,3))
fromJSON('["a"]')
toJSON("a")
toJSON(unbox("a"))

#' ## Tip: Usar Pretty

toJSON(mtcars)
toJSON(mtcars, pretty = TRUE)

#' ## Serialization

No solo para tipos de datos estándar, en general para cualquier objeto.

myobject <- list(
  mynull = NULL,
  mycomplex = lapply(eigen(matrix(-rnorm(9),3)), round, 3),
  mymatrix = round(matrix(rnorm(9), 3),3),
  myint = as.integer(c(1,2,3)),
  mydf = cars,
  mylist = list(foo='bar', 123, NA, NULL, list('test')),
  mylogical = c(TRUE,FALSE,NA),
  mychar = c('foo', NA, 'bar'),
  somemissings = c(1,2,NA,NaN,5, Inf, 7 -Inf, 9, NA),
  myrawvec = charToRaw('This is a test')
)

print(serializeJSON(myobject))

#' Ejemplo con una regresión lineal

fit <- lm(mpg ~ ., data=mtcars)
summary(fit)
cat(serializeJSON(fit,pretty = TRUE))


#' ## JSON para dataframes

toJSON(cars, pretty=T)
toJSON(cars, pretty=T, dataframe = "col")



#' ## Write JSON

json <- toJSON(cars, pretty=T, dataframe = "col")
write(json, "tmp")
writeLines(json,"tmp.json")




