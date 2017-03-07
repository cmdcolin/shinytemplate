tableUI = function(id) {
    ns = shiny::NS(id)
    tagList(
        h1("Table"),
        fluidRow(
            h2("Data table"),
            DT::dataTableOutput(ns("table"))
        ),
        p('Download as CSV'),
        downloadButton(ns('downloadData'), 'Download')
    )
}

tableServer = function(input, output, session) {
    myTable = reactive({
        data.frame(a = 1:10, b = 11:20)
    })

    output$table = DT::renderDataTable(myTable(), selection = 'single')

    output$downloadData <- downloadHandler(
        filename = 'table.csv',
        content = function(file) {
            write.csv(myTable(), file)
        }
    )
}
