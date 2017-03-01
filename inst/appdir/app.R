source('view/plot.R')
source('view/table.R')

ui <- function(request) {
    shiny::fluidPage(
        shiny::titlePanel('shinytemplate2'),

        shiny::tabsetPanel(id = 'inTabset',
            shiny::tabPanel('Plot', plotUI('plot_tab'), style = 'width:1000px;'),
            shiny::tabPanel('Table', tableUI('table_tab'), style = 'width:1000px;')
        )
    )
}

server <- function(input, output, session) {
    shiny::callModule(plotServer, 'plot_tab')
    shiny::callModule(tableServer, 'table_tab')

    shiny::observe({
        query <- shiny::parseQueryString(session$clientData$url_search)
        if (!is.null(query[['tab']])) {
            shiny::updateTabsetPanel(session, "inTabset", selected = query[['tab']])
        }
    })
    shiny::enableBookmarking("url")
}


shiny::shinyApp(ui, server)
