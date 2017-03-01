plotUI = function(id) {

    ns = shiny::NS(id)
    shiny::tagList(
        shiny::fluidRow(
            shiny::h2('My plot'),
            shiny::plotOutput(ns('myplot'))
        )
    )
}
