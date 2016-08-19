
shinyUI(fluidPage(
  
  titlePanel("Fútbol Shiny App"),
  
  sidebarPanel(
    
    fileInput('datafile', h5(strong('Choose CSV file')),
              accept=c('text/csv', 'text/comma-separated-values,text/plain'),
              multiple=TRUE),
    
    hr(),
  
    sliderInput("slider2", label = h5(strong("Number of observations")), min = 1, 
                max = 500, value = c(1,50)),
    
    hr(),
    
    verbatimTextOutput("text"),
    
    hr(),
    
    radioButtons("column", label = h5(strong("Bar Plot Processed Table")),
                 choices = list("Balance Total Goles como Local" = 1, 
                                "Balance Total Goles como Visitante" = 2), 
                 selected = 1),
    
    submitButton("Change Plot")
    
  ),
  
  mainPanel(
    tabsetPanel(type = "tabs", 
                tabPanel("Unprocessed Table", tableOutput("filetable")),
                tabPanel("Processed Table", tableOutput("processedtable")),
                tabPanel("Plot", plotOutput("plot"))

  ))
))