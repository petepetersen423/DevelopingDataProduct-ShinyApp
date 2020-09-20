
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("MTCARS Feature Exploration"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 5,
                        max = 10,
                        value = 6)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            plotOutput("wgtplot"),
            plotOutput("carbplot")
        )
    )
))
