require(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Top Ranked US Hospitals by Selected 30-Day Mortality Rate"),
    sidebarPanel(
      selectInput("Select",
                  label="Choose variable to display",
                  choices = c("Heart Attack",
                            "Heart Failure",
                            "Pneumonia"),
                  selected="Heart Attack"),
      br(),
      p("Choose a variable from the drop down above. The map will then display the best ranked US hospital per state for the selected variable. Map loading times may vary."),
      br(),
      p("This application is slightly inspired by a project from the Coursera R Programming Course."
      ),
      br(),
      p("Data Source: "),
      a("Hospital Compare web site", href = "https://data.medicare.gov/data/hospital-compare")
      ),
      mainPanel(
        htmlOutput("gvis")
      )
))