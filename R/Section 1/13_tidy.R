# Lesson 1.3 - Using Tidy Evaluation with Shiny
# Objectives
# 1. making dynamic graphics using ggplot2
# 2. operating on data frames using the dplyr verbs

suppressPackageStartupMessages({
  library(shiny)
  library(dplyr)
  library(ggplot2)
})

s <- storms
choices <- c("year", "month", "lat", "wind", "pressure")

ui <- fluidPage(
  selectInput("x_var", "X Variable", choices=choices, selected="wind"),
  selectInput("y_var", "Y Variable", choices=choices, selected="lat"),
  plotOutput("scatter")
)

server <- function(input, output, session) {
  
  output$scatter <- renderPlot({
    ggplot(s, aes(x = input$x_var, y = input$y_var)) +
      geom_point()
  })
}

shinyApp(ui, server)

# Exercises
# 1. Fix the dynamic plot
# 2. Make the "Log Transform X Axis" button work