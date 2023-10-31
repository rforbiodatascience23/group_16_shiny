#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      h1("Centraldogma16"),
      tabsetPanel(
<<<<<<< HEAD
        tabPanel(title = "DNA to peptide translation",
                 mod_module1_ui("module1_1")),
        tabPanel(title = "panel2",
                 "module2")
=======
        tabPanel(title = "panel1",
                 "module1"),
        tabPanel(title = "Plot",
                 "plot_module",
                 mod_plot_module_server("plot_module_1"))
>>>>>>> 972131ce0b43bf0f60a024e66ad41625a664864d
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "Centraldogma16"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
