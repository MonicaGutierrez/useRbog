

library(XML)
library(RSelenium)

checkForServer()        # descargar/actualizar Selenium Server
startServer()           # start Selenium Server
remDr <- remoteDriver() # instantiates a new driver
remDr$open()            # open connection

# https://cran.r-project.org/web/packages/RSelenium/vignettes/RSelenium-basics.html

url <- "http://www.meetup.com/Bogota-R-Users-Group/members/"
remDr$navigate(url)
url <- "http://twitter.com"
remDr$goBack()
remDr$goForward()
remDr$refresh()

# Enviando eventos al browser
## con xpath
remDr$navigate("http://www.google.com/ncr")
webElem <- remDr$findElement(using = "xpath", "//*[(@id = 'lst-ib')]")
webElem$sendKeysToElement(list("R users bogota", "\uE007"))

## con css selectors... a veces no funciona
remDr$navigate("http://www.google.com/ncr")
webElem <- remDr$findElement(using = "css selector", "#lst-ib")
webElem$sendKeysToElement(list("R users bogota", "\uE007"))


url <- "http://www.meetup.com/Bogota-R-Users-Group/members/"
remDr$navigate(url)
# "member_42308302"
# Buscar usando
webElem <- remDr$findElement(using = 'id', value =  "member_42308302")
webElem$getElementAttribute("class")
webElem$getElementAttribute("id")

webElem <- remDr$findElement(using = 'css selector', ".memName")
webElem$getElementAttribute("text")

htmlPage <- htmlParse(remDr$getPageSource()[[1]])
# htmlPage[XPATH]
htmlPage['//*[contains(concat( " ", @class, " " ), concat( " ", "memName", " " ))]']


