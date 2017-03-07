library(shiny)

ui <- function(request) {

    source('pages/plot.R', local = T)
    source('pages/table.R', local = T)

    fluidPage(
        titlePanel('shinytemplate3'),

        tabsetPanel(id = 'inTabset',
            tabPanel('Plot', plotUI('plot_tab'), style = 'width:1000px;'),
            tabPanel('Table', tableUI('table_tab'), style = 'width:1000px;')
        )
    )
}

server <- function(input, output, session) {

    source('pages/plot.R', local = T)
    source('pages/table.R', local = T)

    shiny::callModule(plotServer, 'plot_tab')
    shiny::callModule(tableServer, 'table_tab')

    observeEvent(input$inTabset, {
        session$doBookmark()
    })
    onBookmarked(function(url) {
         shiny::updateQueryString(url)
    })
}


shinyApp(ui, server, enableBookmarking = 'url')
