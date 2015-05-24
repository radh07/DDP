library(shiny) 
shinyServer(
  function(input, output) {
    output$results<-renderText({ "Results:"})
    output$text1<- renderText(
{ 
  if( 1 %in% input$calc){ 
    if(input$sex==1)
    {
      paste("Your BMR is ", 655+4.35*input$wt+4.7*input$ht-4.7*input$age)
    }
    else
    {
      paste("Your BMR is ", 66+6.23*input$wt+12.7*input$ht-6.8*input$age)
    }
  } 
}

    )

output$text2<- renderText(
{ 
  if(2 %in% input$calc){ 

    if(input$sex==1)
    {
      paste("Your TDEE is ", (655+4.35*input$wt+4.7*input$ht-4.7*input$age)*as.numeric(input$activity))
    }
    else
    {
      paste("Your TDEE is ", (66+6.23*input$wt+12.7*input$ht-6.8*input$age)*as.numeric(input$activity))
    }
  } 
}

)
}

)