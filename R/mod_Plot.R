#' Plot UI Function
#'
#' @description Plots amino acid count.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @importFrom ggplot2 theme
#' @import Centraldog
mod_Plot_ui <- function(id){
  ns <- NS(id)
  tagList(

    sidebarLayout(
      sidebarPanel(
        textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      mainPanel(
        plotOutput(
          outputId = ns("abundance")
          )
      )
    )

  )
}

#' Plot Server Functions
#'
#' @noRd
mod_Plot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          Centraldog::plot_amino_acid_counts() +
          ggplot2::theme(legend.position = "none")
      }
    })

  })
}

## To be copied in the UI
# mod_Plot_ui("Plot_1")

## To be copied in the server
# mod_Plot_server("Plot_1")
