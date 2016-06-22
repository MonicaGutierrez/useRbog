# /*
#' Commented line in spin() to generate report
knitr::spin("json-manipulation.R")
# */


#' # rlist y dplyr
#'
#' ## rlist
#' http://renkun.me/rlist-tutorial
library(rlist)


m <- fromJSON("data/meetup-members.json")


#' +echo=FALSE
str(m)
str(m, max.level = 1)
str(m, max.level = 2)


members <- m$results
str(members, max.level = 1)
names(members)


m <- fromJSON("data/meetup-members.json", simplifyDataFrame = FALSE)
members <- m$results
str(members, max.level = 2)

list.map(members,names(.))


l <- list.sort(members,(name))
list.select(l,name)

list.map(members,name)
list.mapv(members,name)

list.select(members,city)

l <- list.filter(members, city != "Bogotá")
list.mapv(l,paste(name,city,sep = ": "))


l <- list.filter(members, grepl("Diana",name))
list.mapv(l,name)
l <- list.filter(members, grepl("Pérez",name))
list.mapv(l,name)
l <- list.filter(members, grepl("Daniel",name))
list.mapv(l,name)


l <- list.map(members, list(name = name, dateLastVisited = as.POSIXct(visited/1000, origin="1970-01-01")))
list.sort(l,dateLastVisited)

list.filter(members, visited > "en_US") %>% list.mapv(name)

list.search(members, . == "@jpmarindiaz")

list.search(members, .[grepl("Big",.)])


#'  ## Manipular data frames con dplyr

library(dplyr)

m <- fromJSON("data/meetup-members.json")


str(m)
str(m, max.level = 1)
str(m, max.level = 2)

membersDf <- m$results
str(membersDf)
# [1] "country"        "city"           "topics"         "joined"         "link"           "photo"
# [7] "lon"            "other_services" "name"           "visited"        "self"           "id"
# [13] "lang"           "lat"            "status"         "hometown"       "state"          "bio"
membersDf <- membersDf[c("name","country","city","bio","lang","lat","lon")]


membersDf %>%
  group_by(city) %>%
  summarise(n())

membersDf %>%
  filter(country %in% c("ar","pe"))

membersDf %>%
  filter(!is.na(bio)) %>%
  select(name,bio)




