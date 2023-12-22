tabPanel(
  title = "Protein Analysis",# Changed icon
  sidebarLayout(
    sidebarPanel(
      fluid = TRUE,
      img(src = "aml-logo-sidebar.jpg", width = "100%"),
      br(),
      br(),
      wellPanel(
        radioButtons(
          "proteinAnalysisDatasetType",  # Changed ID
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
          condition = "input.proteinAnalysisDatasetType == 1",  # Changed condition
          selectInput(
            "proteinAnalysisDataset1",  # Changed ID
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
          condition = "input.proteinAnalysisDatasetType == 2",  # Changed condition
          selectInput(
            "proteinAnalysisDataset2",  # Changed ID
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
          condition = "input.proteinAnalysisDatasetType == 3",  # Changed condition
          wellPanel(
            h3("Download:"),
            downloadButton("proteinAnalysisDownloadData", "Download Data")  # Changed ID
          )
        )  
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel(
          "Tab 1", 
          h2("Content for Tab 1")
          #plotOutput("proteinAnalysisSampleClonPlotP",width="100%")  # Changed ID
        ),
        tabPanel(
          "Tab 2", 
          h2("Content for Tab 2")
          #plotOutput("proteinAnalysisSampleClonPlotC",width="100%")  # Changed ID
        )
        # Add more tabs if needed
      )
    )
  )
)
