plotServer = function(input, output, session) {
    output$myplot = shiny::renderPlot({
        plot(1:20)
    })
}
