#Nayla's WD
#setwd("/Users/naylaboorady/Desktop/MSK/scDNA_myeloid/shiny/scDNA_myeloid_shiny")
#Bobby's WD
#setwd("/Users/bowmanr/Projects/scDNA/scDNA_myeloid/shiny/scDNA_myeloid_shiny/")

library(shinythemes)
# CLONOGRAPH DATA ====
final_sample_summary<-readRDS(file="data/final_sample_summary.rds")
clone_mutations<-readRDS(file="data/clone_mutations.rds")
sample_mutations <-readRDS(file="data/sample_mutations_with_pheno.rds")

sample_list <-final_sample_summary


shinyUI( 	
  
  navbarPage(title = strong("AML Mutational Profiling"), windowTitle = "AML Mutational Profiling", 
              fluid = TRUE, id = "nav",inverse=FALSE,theme = shinytheme("sandstone"),
              source("tabs/Home.r", local = TRUE)$value,
              source("tabs/About.r", local = TRUE)$value,
              source("tabs/CopyNumberVariation.R", local = TRUE)$value,
              source("tabs/ProteinAnalysis.r", local = TRUE)$value,
              source("tabs/Diagnostics.R", local = TRUE)$value,
              source("tabs/CohortSummarization.r", local = TRUE)$value,
              source("tabs/TrajectoryAnalysis.r", local = TRUE)$value,
              source("tabs/sampleClonality.r", local = TRUE)$value,
              source("tabs/clonograph.r", local = TRUE)$value,
              source("tabs/networkGraph.r", local = TRUE)$value,
             tabPanel(HTML("</a></li><li><a href=\"https://www.biorxiv.org/content/10.1101/2020.02.07.938860v1\" target=\"_blank\">Paper")),
             tabPanel(HTML("</a></li><li><a href=\"https://bowmanr.github.io/scDNA_myeloid/\" target=\"_blank\">Tutorial"))
  )
)

