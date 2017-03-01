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
