library(shiny)

ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    position = "left",
    sidebarPanel(
      h2("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      img(src = "rstudio.png", width = 200),
      p("Shiny is a product of ", span("RStudio", style = "color: blue"))
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a new package from RStudio that makes it ", em("incredibly "), "easy to build interactive web applications with R."),
      br(),
      p("For an introduction and live examples, visit the ", tags$a("Shiny homepage.", href = "http://shiny.rstudio.com")),
      br(),
      h1("Featuers"),
      tags$ul(
        tags$li("Build useful web applications with only a few lines of code&mdash;no JavaScript required"),
        tags$li("Shiny applications are automatically 'live' in the same way that ", strong("spreadsheets"), " are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.")
      )
    )
  )
)

# Define server logic to summarize and view selected dataset ----
server <- function(input, output) {
}

# Create Shiny app ----
shinyApp(ui = ui, server = server)