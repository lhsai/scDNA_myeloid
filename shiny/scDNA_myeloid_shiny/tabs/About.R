
tabPanel(
  title = "About",
  sidebarLayout(
    sidebarPanel(
      fluid = TRUE,
      img(src = "aml-logo-sidebar.jpg", width = "100%"),
      br(),
      br(),
      wellPanel(
        radioButtons(
          "AboutdatasetType",
          label = h3("About Dataset"),
          
          choices = c(
            "d1" = 1,
            "d2" = 2,
            "d3" = 3
          ),
          selected = 1,
          inline = TRUE
        ),
        conditionalPanel(
          condition = "input.AboutdatasetType == 1",
          selectInput(
            "dataset1",
            label = h3("AboutDataset 1"),
            choices = list(
              "Choice 1" = 1,
              "Choice 2" = 2,
              "Choice 3" = 3
            ),
            selected = 1
          )
        ),
        conditionalPanel(
          condition = "input.AboutdatasetType == 2",
          selectInput(
            "dataset2",
            label = h3("AboutDataset 2"),
            choices = list(
              "Choice 1" = 1,
              "Choice 2" = 2,
              "Choice 3" = 3
            ),
            selected = 1
          )
        ),
        conditionalPanel(
          condition = "input.AboutdatasetType == 3",
          wellPanel(
            h3("Download:"),
            downloadButton("downloadData", "Download Data")
          )
        )  
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel(
          "Tab 1", 
          h2("Content for Tab 1")
          #plotOutput("sampleClonPlotP",width="100%")
        ),
        tabPanel(
          "Tab 2", 
          h2("Content for Tab 2")
          #plotOutput("sampleClonPlotC",width="100%")
        )
        # Add more tabs if needed
      )
    )
  )
)