#' DNA UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_DNA_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' DNA Server Functions
#'
#' @noRd 
mod_DNA_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_DNA_ui("DNA_1")
    
## To be copied in the server
# mod_DNA_server("DNA_1")
