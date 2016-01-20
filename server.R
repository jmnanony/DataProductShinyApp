

library(shiny)
predictHeight <- function(fheight, mheight, gender) {(fheight + mheight + as.integer(gender)) / 2}

shinyServer(
    function(input, output) {
#        output$prediction <- renderPrint({input$gender})
        output$prediction <- renderPrint({predictHeight(input$fHeight,
                                                        input$mHeight,
                                                        input$gender)})
    }
)

