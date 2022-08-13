library(shiny) 

Average_Factor<-function(Regression_model,Waiting_system,Time_series,
                         Extreme_value_theory, Martingale_theory,
                         Monte_Carlo_method, Tic_and_Management,
                         Educational_engineering) {(Regression_model*2 + Waiting_system*3 +
                                                      Time_series*2 + Extreme_value_theory*2 +
                                                      Martingale_theory *3 + Monte_Carlo_method*2+
                                                      Tic_and_Management + Educational_engineering)/17}

diagnostic_f<-function(Regression_model,Waiting_system,Time_series,
                       Extreme_value_theory, Martingale_theory,
                       Monte_Carlo_method, Tic_and_Management,
                       Educational_engineering){
  Average_value<-(Regression_model*2 + Waiting_system*3 +
                    Time_series*2 + Extreme_value_theory*2 +
                    Martingale_theory *3 + Monte_Carlo_method*2+
                    Tic_and_Management + Educational_engineering)/17
  if(Average_value < 10) return("Failed")
  else 
    if(Average_value >=10) return ("Passed")
  }

shinyServer(
  function(input, output) {
    
      output$estimation <- renderPrint({Average_Factor(input$Regression_model,input$Waiting_system,
                                                     input$Time_series, input$Extreme_value_theory,
                                                     input$Martingale_theory, input$Monte_Carlo_method,
                                                     input$Tic_and_Management, input$Educational_engineering)})
    output$diagnostic <- renderPrint({diagnostic_f(input$Regression_model,input$Waiting_system,
                                                   input$Time_series, input$Extreme_value_theory,
                                                   input$Martingale_theory, input$Monte_Carlo_method,
                                                   input$Tic_and_Management, input$Educational_engineering)})
  } 
)