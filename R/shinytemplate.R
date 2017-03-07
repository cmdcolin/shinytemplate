#' Launch the shinytemplate app
#'
#' Executing this function will launch the shinytemplate application in
#' the user's default web browser.
#' @examples
#' \dontrun{
#' shinytemplate(option1 = 'hello', option2 = 'world')
#' }
#' @export
#' @param option1 An option for your app
#' @param option2 Another option for your app
#' @param dev Loads from local directories if selected
shinytemplate = function(option1 = NULL, option2, dev = F) {
    assign("option1", option1, envir = .GlobalEnv)
    assign("option2", option2, envir = .GlobalEnv)
    on.exit(rm(option1, envir = .GlobalEnv))
    on.exit(rm(option2, envir = .GlobalEnv))
    if (!dev) {
        shiny::runApp(base::system.file("appdir", package = "shinytemplate"))
    } else {
        shiny::runApp('inst/appdir')
    }
}
