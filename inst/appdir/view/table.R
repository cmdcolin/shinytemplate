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

tableServer = function(input, output, session) {


    myTable = shiny::reactive({
        data.frame(a = 1:10, b = 11:20)
    })

    output$table = DT::renderDataTable(myTable(), selection = 'single')

    output$downloadData <- shiny::downloadHandler(
        filename = 'table.csv',
        content = function(file) {
            write.csv(myTable(), file)
        }
    )
}
