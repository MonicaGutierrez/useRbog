# /*
#' Commented line in spin() to generate report
knitr::spin("json-streams.R")
# */


#' # JSON Streams


#' Usar cuando se tienen archivos grandes y se necesita hacer un preprocesamiento
#'
library(jsonlite)
library(dplyr)

con_in <- file("data/licitaciones-sample.json")
x <- stream_in(con_in)
names(x)

con_out <- file("data/output.json", open = "wb")
stream_in(con_in, handler = function(df){
  d <- df %>% dplyr::filter(grepl("paz",`Detalle y Cantidad del Objeto a Contratar`))
  stream_out(d, con_out, pagesize = 100)
}, pagesize = 100)
close(con_out)


con_in <- file("data/output.json")
x <- stream_in(con_in)
x

