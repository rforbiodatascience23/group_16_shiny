#' plot_module UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_plot_module_ui <- function(id){
  ns <- NS(id)
  tagList(

  )
}

#' plot_module Server Functions
#'
#' @noRd
mod_plot_module_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

<<<<<<< HEAD
ui <- fluidPage(

  sidebarLayout(

    sidebarPanel(
      textAreaInput(
        inputId = ns("peptide"),
        label = "Peptide sequence",
        width = 300,
        height = 100,
        placeholder = "Insert peptide sequence"))),

  mainPanel(
    plotOutput(
      outputId = ns("abundance")))

)
=======
>>>>>>> 972131ce0b43bf0f60a024e66ad41625a664864d

## To be copied in the UI
# mod_plot_module_ui("plot_module_1")

## To be copied in the server
# mod_plot_module_server("plot_module_1")
