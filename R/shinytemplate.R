#' Launch the shinytemplate app
#'
#' Executing this function will launch the shinytemplate application in
#' the user's default web browser.
#' @author Colin Diesh \email{colin.diesh@gmail.com}
#' @examples
#' \dontrun{
#' shinytemplate()
#' }

#' shinytemplate runs the app in production mode
#' @export
#' @param option1 Option 1
#' @param option2 Option 2
shinytemplate <- function(option1 = NULL, option2 = NULL) {
    .GlobalEnv$.args <- list(option1 = option1, option2 = option2)
    on.exit(rm(.args, envir = .GlobalEnv))
    filename <-  base::system.file('appdir', package = 'shinytemplate')
    shiny::runApp(filename, launch.browser = TRUE)
    return(invisible())
}


#' shinytemplate runs the app in development mode
#' @export
#' @param option1 Option 1
#' @param option2 Option 2
shinytemplateDev <- function(option1 = NULL, option2 = NULL) {
    .GlobalEnv$.args <- list(option1 = option1, option2 = option2)
    on.exit(rm(.args, envir = .GlobalEnv))
    shiny::runApp('inst/appdir', launch.browser = TRUE)
    return(invisible())
}
