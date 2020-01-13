

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Car engine displacement to MPG based on the type of engine"),

    # select number of cylenders
    sidebarLayout(
        sidebarPanel(
            sliderInput("numOfCyl",
                        "Cylinder Count:",
                        min = 4,
                        max = 8,
                        value = 4,
                        step = 2),
            h3("All you need in order to run this is to load the mtcars data set."),
            h3("From there you choose the number of cylinders you want and the plot will update.")
        ),
        

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
