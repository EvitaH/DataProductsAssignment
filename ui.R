library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("How much should my ring cost?   Just chose your carats, check the price, and feel confident walking into a jeweller\'s store!"),
    sidebarPanel(
        sliderInput("car",
                    "How many carat would you like?",
                    min = 0.05,
                    max = 0.45,
                    value = 0.2
        )),
    mainPanel(
        p('Your price should be'),
        verbatimTextOutput('pr')
    )
))
