
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
# https://heeskoh.shinyapps.io/Class9Project/
#

library(shiny)

estimateHeight <- function(finput,minput,genderadjust) (finput+minput)/2+as.numeric(genderadjust)*6.35

shinyServer(
  function(input, output) {
    output$fhoutput <- renderPrint({input$fhinput})
    output$mhoutput <- renderPrint({input$mhinput})
    output$genderout <- renderPrint({if (input$gender =='-1') paste("Girl") else paste("Boy")})
    output$prediction <- renderPrint({estimateHeight(input$fhinput, input$mhinput, input$gender)})                
  }
)