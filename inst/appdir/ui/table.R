tableUI = function(id) {
    ns = shiny::NS(id)
    shiny::tagList(
        shiny::h1("Table"),
        shiny::fluidRow(
            shiny::h2("Data table"),
            DT::dataTableOutput(ns("table"))
        ),
        shiny::p('Download as CSV'),
        shiny::downloadButton(ns('downloadData'), 'Download')
    )
}

