# Load packages ----
library(shiny)

# User interface ----
ui <- fixed(
  
  titlePanel("Histogram test"),
  
  sidebarLayout(
    
    sidebarPanel(
      helpText("Create demographic maps with information from the 2010 US Census."),
      

      sliderInput(
        "num", 
        label = "Range of interest:",
        min = 0, max = 100, value = 50)
    ),
    
    mainPanel(
      plotOutput("map"))
  )
)


# Define server logic ----
server <- function(input, output) {
  output$map <- renderPlot({
    hist(rnorm(input$num))
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)
