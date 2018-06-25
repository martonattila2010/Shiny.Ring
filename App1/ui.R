library(shiny)
library(ggplot2)
library(tidyverse)
library(DT)


options(encoding = 'UTF-8')
Sys.setlocale(category = 'LC_ALL','en_US.UTF-8')

library(shiny)
# Gyuruzeses adatbazik RShiny
shinyUI(fluidPage(
  
  titlePanel("OpenRingMaps Species Abundance"),
  
  sidebarLayout(
    
    #Input
    sidebarPanel(
      selectInput(inputId  = "species",
                  label    = "Species:", 
                  choices  = c(df$species),
                  #selected = "Ficedula parva",
                  selectize = TRUE),
      
      selectInput(inputId   = "breaks",
                  label     = "Breaks of histogram:",
                  choices   = c("days", "weeks", "months"),
                  selected  = "days")
    ),
    
    #Output
    mainPanel(
      plotOutput("distPlot")
   )
  )
 )
)
