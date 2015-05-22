library(shiny)
shinyUI(fluidPage(
  titlePanel("Basic Metabolic Rate (BMR) / Total Daily Energy Expenditue (TDEE) Calculator"), 
  fluidRow(
    column(12, h4("Basic Metabolic Rate is the amount of calories required to carry out the basic 
metabolic functions in the body while it is at rest. Total daily energy expenditure 
is the amount of calories required to carry out the activities including eating, sleeping etc., Please input your gender, 
                  age, weight, height and activity level to calculate your BMR and TDEE numbers. It is not
                  advisable to consume fewer calories than indicated by BMR. To aid safe fat loss, it is usual 
                  to consume about 500 calories less than the TDEE number. This is not intended to be medical
                  advice. Please consult a healthcare provider and/or registered dietician to ascertain your 
                  specific needs."))
  ),
  
  fluidRow(
    column(4, radioButtons("sex", label = h3("I am a "),
                            choices = list("female" = 1, "male" = 2
                                           ),selected = 1)),
    column(4, numericInput("age", label=h3("My age is"), value="0", min=0))
    ),
  fluidRow(
    column(4, numericInput("wt", 
                 label = h3("Weight (in lbs)"), value="0", min=0)),
    
    column(4, numericInput("ht", 
                  label = h3("Height (in inches)"), value="0", min=0)),             
    column(4, 
  radioButtons("activity", 
                       label = h3("Activity Level"), 
                       choices = list("Sedentary" = 1.2, 
                                      "Light exercise (1-3 times/week)" = 1.375, 
                                      "Moderate exercise (3-5 times/week)" = 1.55,
                                      "Heavy exercise (6-7 times/week)" = 1.725,
                                      "Very heavy exercise (physical job)" = 1.9),
                       selected = 1.2)
    )
  ),
  fluidRow(
    column(12, checkboxGroupInput("calc", 
                                  label = h3("Calculate:"), 
                                  choices = list("Basal Metabolic Rate (BMR)" = 1, 
                                                 "Total Daily Energy Expenditure" = 2),
                                  selected = c(1,2)))),
  fluidRow(
    column(12,actionButton("go", label="Calculate!"))
  ),
  fluidRow(
    column(12, h2(textOutput("results")))
  ),
  fluidRow(
    column(12, textOutput("text1"))
  ),
  
  fluidRow(
    column(12, textOutput("text2"))
  )
)
)