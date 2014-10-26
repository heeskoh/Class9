# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
# https://heeskoh.shinyapps.io/Class9Project/
#

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Kid's Height Predictor!"),        
  sidebarPanel(
    p("A child's height based on parental heights subjects to regression toward the mean. This calculator is base on this algorithm. Please enjoy it !"),
    h3("kid's information"),                
    numericInput('fhinput', label="Input Father's height(cm)", value = 176.3),
    numericInput('mhinput', label="Input Mother's height(cm)", value = 162.2),
    radioButtons("gender", "Kid's gender",
                 c("Girl" = "-1",
                   "Boy" = "1")),
                  submitButton('Calculate!'), 
    p("If you don't know the exact height of your parents, you can accept the default value. The average height of male of age 20 or older is 176.3 cm, female is 162.2 cm in the United States.")
  ),
  mainPanel(
    h3('Expected adult height for the kid'),
    h4('You entered'),
    p("Father's Height(cm)"),
    verbatimTextOutput("fhoutput"),
    p("Mother's Height(cm)"),
    verbatimTextOutput("mhoutput"),
    p("Kid's gender"),
    verbatimTextOutput("genderout"),
    h4('Which resulted in a prediction of '),                
    verbatimTextOutput("prediction"),
    HTML("<p>The results of this calculator are prediction only. Predicted heights are usually within <strong>10.16 centimeters</strong>, taller or shorter, than actual adult height. Medical conditions and other factors can affect a child's growth.</p>"),
    p( tags$a(href="http://www.cdc.gov/GrowthCharts/","CDC Growth Charts of the United States,"), "are good sources of information to evaluate the growth situation of a child.")
  )
))