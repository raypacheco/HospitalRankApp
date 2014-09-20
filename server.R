library(shiny)
library(googleVis)

shinyServer(function(input, output){
      myInput <- reactive({
        switch(input$Select, "Heart Attack" = "heartAttack.csv",
               "Heart Failure" = "heartFailure.csv",
               "Pneumonia" = "pneumonia.csv")
      })
      output$gvis <- renderGvis({
          data <- read.csv(myInput())
          gvisMap(data, "address", "hospital", options = 
                             list(showTip=TRUE, mapType='normal'))
      
      })
})