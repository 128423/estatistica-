library(shiny)
# Define UI for random distribution application 
shinyUI(pageWithSidebar(
    
  # Application title
  headerPanel("Trabalho De Estatistica em R "),
  
  br (),
  
  # Show a tabset that includes a plot, summary, and table view
  # of the generated distribution
  mainPanel(
    tabsetPanel(
      tabPanel("Exercio 17", 
               br(),
               h4("Use a formula 10-2 para encontrar o valor do coeficiente de correlacao linear r  para os custo emparelhados pizza/tarifa do metro apresentados na tabela 10-2"),
               plotOutput("plot1"),
               h4("Resultado : ",textOutput("resul"))
               ),
      tabPanel("Exercico 3 ",
               br(),
               h4("unsando os termometro do exemplo 3 ache a probabilidade de selecinarmos aleatoriamente um termometro que apresente leitura no ponto de congelamento da agua superior -1.23"),
               
               plotOutput("plot2"))
    )
  )
))
