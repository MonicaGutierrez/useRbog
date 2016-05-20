library(rvest)

## Movies

movie <- read_html("http://www.imdb.com/title/tt0109747/")
# Get rating
movie %>%
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()

movie %>%
  html_node(".ratingValue span") %>%
  html_text() %>%
  as.numeric()

movie %>%
  html_node(".credit_summary_item:nth-child(3)") %>%
  html_text()

movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()

# Otras funciones
# html_nodes(doc, xpath = "//table//td")) ## Con xpath
# html_name() # para extraer los tags de html

movie %>%
  html_nodes("img") %>%
  html_attr("alt")

movie %>%
  html_nodes("#title-overview-widget img") %>%
  html_attr("alt")

movie %>%
  html_nodes("#title-overview-widget img") %>%
  html_attr("src")



## http://www.congresovisible.org/congresistas/

url <- "http://www.congresovisible.org/congresistas/"
congreso <- read_html(url)

congreso %>%
  html_nodes("h3 a") %>%
  html_text()

congreso %>%
  html_nodes("h3+ p") %>%
  html_text()


library(pystr)
urlTpl <- "http://www.congresovisible.org/congresistas/#page={letra}"
urls <- unlist(lapply(LETTERS,function(u){
  pystr_format(urlTpl,list(letra=u))
}))



l <- lapply(urls, function(url){
  message("Reading: ",url)
  congreso <- read_html(url)
  congreso %>%
    html_nodes("h3 a") %>%
    html_text()
})
unlist(l)

