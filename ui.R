library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Average's calculation of the 1st semester of probability and statistics's master 2."),
    
    sidebarPanel(
      numericInput('Regression_model', 'Insert your Regression model mark', 10,min = 0, max = 20, step = 0.5) ,
      numericInput('Waiting_system', 'Insert your Waiting system mark', 10, min = 0, max = 20, step = 0.5) ,
      numericInput('Time_series', 'Insert your Time series mark',10, min = 0, max = 20, step = 0.5) ,
      numericInput('Extreme_value_theory', 'Insert your Extreme value theory mark',10, min = 0, max = 20, step = 0.5) ,
      numericInput('Martingale_theory', 'Insert your Martingale theory mark',10, min = 0, max = 20, step = 0.5) ,
      numericInput('Monte_Carlo_method', 'Insert your Monte Carlo method mark',10, min = 0, max = 20, step = 0.5) ,
      numericInput('Tic_and_Management', 'Insert your Tic and Management mark',10, min = 0, max = 20, step = 0.5) ,
      numericInput('Educational_engineering', 'Insert your Educational engineering mark',10, min = 0, max = 20, step = 0.5) 
    ), 
    mainPanel(
      h3('This application calculates the average of the first semester'),
      h3('Pass or fail is evaluated as follows:'),
      h3(tags$div(
        tags$ul(
          tags$li('Average <10,       : Failed'),
          tags$li('Average >= 10 : Passed')
        )
      )),
      
      h3(), 
      verbatimTextOutput("inputRegression_modelmark"),
      verbatimTextOutput("inputWaiting_systemmark"),
      verbatimTextOutput("inputTime_seriesmark"),
      verbatimTextOutput("inputExtreme_value_theorysmark"),
      verbatimTextOutput("inputMartingale_theorymark"),
      verbatimTextOutput("inputMonte_Carlo_methodmark"),
      verbatimTextOutput("inputTic_and_Managementmark"),
      verbatimTextOutput("inputEducational_engineeringmark"),
      
      h3('Your calulated AVERAGE RESULT is:'),
      verbatimTextOutput("estimation"),
      h3('It means that you:'),strong(verbatimTextOutput("diagnostic"))
      
    )
    
  )   
)