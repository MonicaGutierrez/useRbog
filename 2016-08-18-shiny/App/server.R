
shinyServer(function(input, output) {
  
  filedata <- reactive({
    infile <- input$datafile
    if (is.null(infile)) {
      return(NULL)
    }

    df <- df_loader(input)
  })
  
  processed_data <- reactive({
    if(is.null(filedata())){
      return(NULL)
    }
    
    df <- process_data(filedata())
    
  })
  
  output$filetable <- renderTable({
    filedata()[input$slider2[1]:input$slider2[2],]
  })
  
  output$processedtable <- renderTable({
    processed_data()
  })
  
  output$plot <- renderPlot({
    if(is.null(processed_data())){
      return(NULL)
    }
    if(input$column==1){
      bar_plot_btgl(processed_data())
    }
    else{
      bar_plot_btgv(processed_data())
    }
  })
  
  output$text <- renderText({
    out <- "Files Chosen: "
    if(is.null(filedata())){
      return(paste(out, "Nothing yet", sep=''))
    }
    tmp <- paste(input$datafile$name, input$text, sep=",")
    tmp <- paste(tmp, collapse = "")
    out <- paste(out, tmp)
    out <- substr(out, 1, nchar(out)-1)
    return(out)
  })

})