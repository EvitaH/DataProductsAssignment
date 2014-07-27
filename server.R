library(UsingR)
library(shiny)
library(caret)
data(diamond)

d <<- diamond
d <<- data.frame(d)
x <<- d$price
y <<- d$carat


outpr <- function(car){
    fit <- lm(x ~ I(y * 10))
    pred <- predict(fit, newdata = data.frame(y=car))  
    pred}
    
shinyServer(
    function(input, output) {
        output$pr <- renderPrint({outpr(input$car)})
    }
)
