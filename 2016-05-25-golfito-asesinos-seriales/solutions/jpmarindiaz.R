library(dplyr)
library(dmaps)
library(shiny)
library(DT)
app <- shinyApp(
  ui = bootstrapPage(
    dmapsOutput("viz",height = "400"),dataTableOutput("table"),verbatimTextOutput("debug")),
  server = function(input, output) {
    data <- read.csv("serial-killers-clean.csv") %>% group_by(Country,Name) %>%
      summarise(victims = sum(victims)) %>% group_by(Country) %>% filter(!is.na(victims)) %>%
      summarise(total=sum(victims),nkillers=n()) %>% mutate(victimsPerKiller=total/nkillers) %>% arrange(desc(victimsPerKiller)) %>% as.data.frame()
   output$debug <- renderPrint({paste(input$table_rows_selected,data[input$table_rows_selected,"Country"])})
     output$viz <- renderDmaps({
      region <- reactive(data[input$table_rows_selected,"Country"])
      dmaps("world_countries",data = data,valueCol = "victimsPerKiller",
            regionCols = c("Country"),regions = region)})
    output$table <- renderDataTable({datatable(data)})})
runApp(app)



data <- read.csv("serial-killers-clean.csv") %>%
  group_by(Country,Name) %>%
  summarise(victims = sum(victims)) %>%
  group_by(Country) %>%
  filter(!is.na(victims)) %>%
  summarise(total=sum(victims),nkillers=n()) %>%
  mutate(victimsPerKiller=total/nkillers) %>% arrange(desc(victimsPerKiller)) %>%
  as.data.frame()




