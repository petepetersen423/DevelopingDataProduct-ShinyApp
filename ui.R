
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("MTCARS Feature Exploration",
               ),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 5,
                        max = 10,
                        value = 6),
            h5("1.  Move the slider to select the number of bins for the 3 histograms 
               displaying features of the MTCARS dataset", align = "left"),
            selectInput("color", "Choose a color:",
                        choices = c("turquoise", "aquamarine", "darkgreen","steelblue")),
            
           
           
            h5("2.  Select a color from the dropdown list to apply to the 3 histograms 
               displaying features of the MTCARS dataset.", align = "left"),
            
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h5("By:  Pete Petersen"),
            h5("Course:  Data Products"),
            plotOutput("distPlot"),
            plotOutput("wgtplot"),
            plotOutput("carbplot")
        )
    )
))
