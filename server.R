library(shiny)
options(scipen=999)

shinyServer(function(input, output) {
  
  output$drake  <- renderText({as.numeric(input$stars)*(input$life*input$intel*input$tech*input$planets*input$habit)})
  
  })


