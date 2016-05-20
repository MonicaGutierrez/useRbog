

library(XML)
# http://stackoverflow.com/questions/1395528/scraping-html-tables-into-r-data-frames-using-the-xml-package
theurl <- "http://en.wikipedia.org/wiki/List_of_serial_killers_by_number_of_victims"
theurl <- "http://en.wikipedia.org/wiki/Brazil_national_football_team"
tables <- readHTMLTable(theurl)
n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))

# Mejor nos vamos con httr
library(httr)
tabs <- GET(theurl)
tabs <- readHTMLTable(rawToChar(tabs$content), stringsAsFactors = F)
d <- tabs[[1]]


## Google URL encode example

page <- GET("http://google.com?q=useR",verbose())
page <- GET("http://google.com?q=useR bogota",verbose())
URLencode("http://google.com?q=useR bogota")
page <- GET(URLencode("http://google.com?q=useR bogota"),verbose())

rawToChar(page$content)
