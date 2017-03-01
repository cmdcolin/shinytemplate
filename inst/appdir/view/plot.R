plotUI = function(id) {

    ns = shiny::NS(id)
    shiny::tagList(
        shiny::fluidRow(
            shiny::h2('My plot'),
            shiny::plotOutput(ns('myplot'))
        )
    )
}

plotServer = function(input, output, session) {
    output$myplot = shiny::renderPlot({
        plot(1:10)
    })
}
