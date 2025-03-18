# Lesson 1.3 - Using Tidy Evaluation with Shiny
# Objectives
# 1. Understand how to implement dynamic graphics with ggplot2
# 2. Practice operating on data frames using the dplyr verbs and user supplied variable names

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
  checkboxInput("log_x", "Log Transform X Axis"),
  plotOutput("scatter")
)

server <- function(input, output, session) {
  
  plotdata <- reactive({
    if (input$log_x) {
      s |>
        mutate(!!input$x_var := log10(.data[[input$x_var]]))
    } else {
      s
    }
  })
  
  output$scatter <- renderPlot({
    ggplot(plotdata(), aes(x = .data[[input$x_var]], y = .data[[input$y_var]])) +
      geom_point() 
  })
}

shinyApp(ui, server)

# Exercises
# 1. Fix the dynamic plot
# 2. Make the "Log Transform X Axis" button work