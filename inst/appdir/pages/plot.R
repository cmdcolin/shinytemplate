plotUI = function(id) {

    ns = shiny::NS(id)
    tagList(
        fluidRow(
            h2('My plot'),
            plotOutput(ns('myplot'))
        )
    )
}
plotServer = function(input, output, session) {
    output$myplot = renderPlot({
        plot(1:20)
    })
}
