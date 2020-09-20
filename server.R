#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
#        x    <- faithful[, 2]
        x<- mtcars$hp
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'red', border = 'white', main = 'MTCars HP Distribution'
             ,ylab = 'Count', xlab = 'Horsepower')

    })
    output$wgtplot <- renderPlot({
        
        # generate bins based on input$bins from ui.R
        #        x    <- faithful[, 2]
        x<- mtcars$wt
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        
        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'red', border = 'white', main = 'MTCars weight Distribution'
             ,ylab = 'Count', xlab = 'Weight')
        
    })

    output$carbplot <- renderPlot({
    
        # generate bins based on input$bins from ui.R
        #        x    <- faithful[, 2]
        x<- mtcars$carb
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        
        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'red', border = 'white', main = 'MTCars Carb Distribution'
             ,ylab = 'Count', xlab = 'Carb')
        
    })
})
