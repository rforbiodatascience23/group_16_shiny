#' whahyerver UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_whahyerver_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' whahyerver Server Functions
#'
#' @noRd 
mod_whahyerver_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_whahyerver_ui("whahyerver_1")
    
## To be copied in the server
# mod_whahyerver_server("whahyerver_1")
