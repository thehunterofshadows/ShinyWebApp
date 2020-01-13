

library(shiny)
library(ggplot2)


# Define server logic required to draw a plot
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # filter the data for the plot to just the cylinder selected
        
        mtcarsFiltered <-mtcars[mtcars$cyl==as.numeric(input$numOfCyl),]
        
        ggplot(mtcarsFiltered, aes(disp, mpg))+
            geom_point(size=8)+
            labs(subtitle = "MPG to # of Cylinders",
                 x="Displacement",
                 y="Miles per Gallon",
                 title="Plot")+
            geom_smooth(method=lm) 

    })

})
