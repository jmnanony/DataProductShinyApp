

library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Predict Child's Height"),
    sidebarPanel(
        numericInput("fHeight", "Father's height (in):", 70),
        numericInput("mHeight", "Mother's height (in):", 65),
        radioButtons("gender", "Child's gender",
                           c("Male" = 5,
                             "Female" = -5)),
        submitButton('Submit')
    ),
    mainPanel(
        tabsetPanel(
            tabPanel("Predictor", 
                     h3("Child's Predicted Adult Height (in)"),
                     verbatimTextOutput("prediction")),
            tabPanel("Help",
                     h3("Description"),
                     p("This Shiny App will predict the adult height of a child. 
                       The input parameters are both parent's height and the gender of the child. 
                       The algorithm is:"),
                     p("1) Add the father's and mother's height in inches."),
                     p("2) Add 5 inches if child is a boy and subtract 5 inches is child is a girl."),
                     p("3) Divide this sum by two."),
                     h3("Usage"),
                     p("Enter a height for the father and mother and select the radio button 
                       to indicate whether the child is male or female. 
                       Then press the Submit button. The predicted adult height of the child 
                       will be displayed in the Predictor tab.")
                     ),
            tabPanel("Code",
                     h3("Code at this GitHub link:"),
                     p(a("https://github.com/jmnanony", href="https://github.com/jmnanony"))
            )
        )
        
    )
))

