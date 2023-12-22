tabPanel(
  title = "Trajectory Analysis",# Changed icon
  sidebarLayout(
    sidebarPanel(
      fluid = TRUE,
      img(src = "aml-logo-sidebar.jpg", width = "100%"),
      br(),
      br(),
      wellPanel(
        radioButtons(
          "trajectoryDatasetType",  # Changed ID
          label = h3("Dataset"),
          choices = c(
            "d1" = 1,
            "d2" = 2,
            "d3" = 3
          ),
          selected = 1,
          inline = TRUE
        ),
        conditionalPanel(
          condition = "input.trajectoryDatasetType == 1",  # Changed condition
          selectInput(
            "trajectoryDataset1",  # Changed ID
            label = h3("Dataset 1"),
            choices = list(
              "Choice 1" = 1,
              "Choice 2" = 2,
              "Choice 3" = 3
            ),
            selected = 1
          )
        ),
        conditionalPanel(
          condition = "input.trajectoryDatasetType == 2",  # Changed condition
          selectInput(
            "trajectoryDataset2",  # Changed ID
            label = h3("Dataset 2"),
            choices = list(
              "Choice 1" = 1,
              "Choice 2" = 2,
              "Choice 3" = 3
            ),
            selected = 1
          )
        ),
        conditionalPanel(
          condition = "input.trajectoryDatasetType == 3",  # Changed condition
          wellPanel(
            h3("Download:"),
            downloadButton("trajectoryDownloadData", "Download Data")  # Changed ID
          )
        )  
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel(
          "Tab 1", 
          h2("Content for Tab 1")
          #plotOutput("trajectorySampleClonPlotP",width="100%")  # Changed ID
        ),
        tabPanel(
          "Tab 2", 
          h2("Content for Tab 2")
          #plotOutput("trajectorySampleClonPlotC",width="100%")  # Changed ID
        )
        # Add more tabs if needed
      )
    )
  )
)