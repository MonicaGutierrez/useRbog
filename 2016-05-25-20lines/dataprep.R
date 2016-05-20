
library(httr)
library(XML)
library(plyr)

# GET DATA
url <- "https://en.wikipedia.org/wiki/List_of_serial_killers_by_number_of_victims"
tabs <- GET(url)
tabs <- readHTMLTable(rawToChar(tabs$content), stringsAsFactors = F)
d <- rbind.fill(tabs)
write.csv(d,"serial-killers.csv",row.names = FALSE)

# Clean data

d <- read.csv("serial-killers.csv",stringsAsFactors = FALSE)
str(d)
d$`Proven victims` <- as.numeric(d$`Proven.victims`)
d$`Proven victims`[is.na(d$`Proven.victims`)] <- 0
d$`Proven victims*` <- as.numeric(d$`Proven.victims.`)
d$`Proven victims*`[is.na(d$`Proven.victims.`)] <- 0
d$`victims` <- d$`Proven victims` + d$`Proven victims*`

d$Country[d$Country == "Colombia Ecuador Peru"] <- "Colombia"
d$Country[d$Country == "Colombia Ecuador"] <- "Colombia"
d$Country[d$Country == "USSR Ukraine"] <- "Russia"
d$Country[d$Country == "German Reich Nazi Germany"] <- "Germany"
d$Country[d$Country == "Ottoman Iraq Iraq Persia"] <- "Iraq"
d$Country[d$Country == "USSR"] <- "Russia"
d$Country[d$Country == "Republic of Korea"] <- "South Korea"
d$Country[d$Country == "Russian SFSR Soviet Union"] <- "Russia"
d$Country[d$Country == "German Empire Weimar Germany"] <- "Germany"
d$Country[d$Country == "Soviet Union Russia"] <- "Russia"
d$Country[d$Country == "Soviet Union"] <- "Russia"
d$Country[d$Country == "United States Mexico"] <- "Mexico"
d$Country[d$Country == "Thailand   Nepal India Malaysia"] <- "Vietnam"
d$Country[d$Country == "Austria United States Czechoslovakia"] <- "Austria"
d$Country[d$Country == "Soviet Union Russia Ukraine"] <- "Russia"
d$Country[d$Country == "West Germany"] <- "Germany"
d$Country[d$Country == "East Germany"] <- "Germany"
d$Country[d$Country == "German Empire German republic"] <- "Germany"
d$Country[d$Country == "Czechoslovakia Germany Netherlands"] <- "Slovakia"

d$Country[d$Country == "Ecuador Spain"] <- "Ecuador"
d$Country[d$Country == "Italy France"] <- "Italy"
d$Country[d$Country == "East Germany Germany"] <- "Germany"
d$Country[d$Country == "West Germany"] <- "Germany"
d$Country[d$Country == "SR Croatia"] <- "Croatia"
d$Country[d$Country == "SR Slovenia"] <- "Slovenia"
d$Country[d$Country == "United States [87]"] <- "United States"

d$Country[d$Name == "Václav Mrázek"] <- "Czech Republic"
d$Country[d$Name == "Nikolai Dzhumagaliev"] <- "Kazakhstan"
d$Country[d$Name == "Manuel Delgado Villegas"] <- "Spain"
d$Country[d$Name == "David Maust"] <- "United States"
d$Country[d$Name == "Hubert Pilčík"] <- "Czech Republic"
d$Country[d$Name == "Manuel Delgado Villegas"] <- "Spain"
d$Country[d$Name == "Ricardo Caputo"] <- "Argentina"
d$Country[d$Name == "Jozef Slovák"] <- "Slovakia"
d$Country[d$Name == "Silvo Plut"] <- "Slovenia"
d$Country[d$Name == "Marie Fikáčková"] <- "Czech Republic"
d$Country[d$Name == "Bobby Jack Fowler"] <- "United States"
d$Country[d$Name == "Johann Otto Hoch"] <- "Germany"
d$Country[d$Name == "Yoshio Kodaira"] <- "Japan"
d$Country[d$Name == "Volker Eckert"] <- "Germany"

unique(d$Country)

write.csv(d,"serial-killers-clean.csv",row.names = FALSE)



