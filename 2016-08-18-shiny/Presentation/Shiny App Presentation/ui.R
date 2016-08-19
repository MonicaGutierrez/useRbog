shinyUI(fluidPage(
  titlePanel("Introducción a Shiny Apps"),
  
  fluidRow(
    
    column(3,
           h3("Different Buttons"),
           actionButton("action", label = "Action Button"),
           br(),
           submitButton("or Submit Button")),
    
    column(3,
           h3("Single checkbox"),
           checkboxInput("checkbox", label = "Choice", value = TRUE)),
    
    column(3, 
           checkboxGroupInput("checkGroup", 
                              label = h3("Checkbox group"), 
                              choices = list("only Choice 1" = 1, 
                                             "maybe this one too" = 2, "Or all" = 3),
                              selected = 1)),
    
    column(3, 
           dateInput("date", 
                     label = h3("Single Date input"), 
                     value = "2014-01-01"))   
  ),
  
  fluidRow(
    
    column(3,
           dateRangeInput("dates", label = h3("Or Date input range"))),
    
    column(3,
           fileInput("file", label = h3("File input chooser"))),
    
    column(3, 
           h3("Help text"),
           helpText("This isn't consider a real widget",
                    "but it is very helpful to support", 
                    "other widgets by giving more information about it")),
    
    column(3, 
           numericInput("num", 
                        label = h3("Single numeric input"), 
                        value = 1))   
  ),
  
  fluidRow(
    
    column(4,
           radioButtons("radio", label = h3("Radio buttons"),
                        choices = list("This choice" = 1, "or maybe this" = 2,
                                       "but not all" = 3),selected = 1)),
    
    column(4,
           selectInput("select", label = h3("Select from choices"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                      "Choice 3" = 3), selected = 1)),
    
    column(4, 
           sliderInput("slider1", label = h3("Different Sliders"),
                       min = 0, max = 100, value = 50),
           sliderInput("slider2", "",
                       min = 0, max = 100, value = c(25, 75))
    ),
    
    column(4, 
           textInput("text", label = h3("Dynamic text"), 
                     value = "This can be changed")),
    
    
    column(4, 
           code('install.packages("shiny")'),
           img(src="rstudio.jpg", height=100, width=100), align = "center")
  )
  
))