estimateHeight <- function(finput,minput,genderadjust) (finput+minput)/2+as.numeric(genderadjust)*6.35
output$fhoutput <- renderPrint({input$fhinput})
output$mhoutput <- renderPrint({input$mhinput})
output$genderout <- renderPrint({if (input$gender =='-1') paste("Girl") else paste("Boy")})
output$prediction <- renderPrint({estimateHeight(input$fhinput, input$mhinput, input$gender)})                




                