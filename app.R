install.packages("shinyjs")
library(shiny)
library(shinyjs)

ui <- fluidPage(
  useShinyjs(),
  mainPanel(
    verbatimTextOutput("text"),
  )
)

server <- function(input, output, session) {
    session$allowReconnect("force")
    output$text <- renderText({
        paste(
              "This is the default Shiny App.",
              "Supply a git repo url in the service configuation page to deploy your own Shiny App.",
              sep="\n")
    })
    alert('noted')
}

# Run the application
shinyApp(ui = ui, server = server)
