library(shinythemes)

# Load your data here
# ...

shinyUI(   
  navbarPage(
    title = strong("AML Mutational Profiling"), 
    windowTitle = "AML Mutational Profiling", 
    fluid = TRUE, 
    id = "nav",
    inverse = FALSE,
    theme = shinytheme("sandstone"),

    # Include your tabs here
    tabPanel("Copy Number Variation", source("tabs/CopyNumberVariation.R", local = TRUE)$value),
    tabPanel("Protein Analysis", source("tabs/ProteinAnalysis.r", local = TRUE)$value),
    tabPanel("Trajectory Analysis", source("tabs/TrajectoryAnalysis.r", local = TRUE)$value),
    tabPanel("Sample Clonality", source("tabs/sampleClonality.r", local = TRUE)$value),
    tabPanel("Clonograph", source("tabs/clonograph.r", local = TRUE)$value),
    tabPanel("Network Graph", source("tabs/networkGraph.r", local = TRUE)$value),

    # External links as tabs
    tabPanel(title = "Paper", HTML('<a href="https://www.biorxiv.org/content/10.1101/2020.02.07.938860v1" target="_blank">Paper</a>')),
    tabPanel(title = "Tutorial", HTML('<a href="https://bowmanr.github.io/scDNA_myeloid/" target="_blank">Tutorial</a>'))

    # Add more tabPanel as needed
  )
)
