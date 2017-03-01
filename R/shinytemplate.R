#' Launch the shinytemplate app
#'
#' Executing this function will launch the shinytemplate application in
#' the user's default web browser.
#' @author Colin Diesh \email{colin.diesh@gmail.com}
#' @examples
#' \dontrun{
#' shinytemplate()
#' }

#' Run the app in production mode
#' @export
shinytemplate <- function() {
    filename <-  base::system.file('appdir', package = 'shinytemplate')
    shiny::runApp(filename, launch.browser = TRUE)
    return(invisible())
}


#' Run the app in development mode
#' @export
shinytemplateDev <- function() {
    shiny::runApp('inst/appdir', launch.browser = TRUE)
    return(invisible())
}
