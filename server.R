library(shiny)

# Define server logic for random distribution application
shinyServer(function(input, output) { 
  
    
    x = c(0.15,0.35,1,1.25,1.75,2)
    y = c(0.15,0.35,1,1.35,1.50,2)
    
    zx=(x - mean(x))/sd(x)
    zy=(y - mean(y))/sd(y)
    
    output$plot1 <- renderPlot(plot(x,y))
    
    output$resul <- renderText(toString( (sum(zx*zy)/(length(x)-1))))
     
    # 3 media 0graus sd 1 grau 
     #z3 = c(-1.23)
    # zd =c (0.1093)
   #  result =  c (1 - zd)
     
  #   x <- seq(-4,4,length =100)* 1 + 0
   #  hx <-dnorm(x,0,1)
     
     
    # output$plot2 <- renderPlot(plot(x,hx, type = "l"))
     
   })
 