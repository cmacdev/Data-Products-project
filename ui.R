
library(shiny)

shinyUI(fluidPage(

  
  titlePanel("How many Alien Civilisations?"), 

#SIDE
  sidebarLayout(sidebarPanel(
      selectInput("stars", label = h6("How far do you want to go?"), 
                  choices = list("Universe" = 20000000000000000000000, "Milky Way" = 100000000000, "Stars within 50 light years" = 64)),
      br(),
      h4("The three variables below are not perfectly understood. So please choose your own. Starting values are some current estimates."),
                  h5("Choose your own probability. 0 is never, 1 is always, and 0.5 is half the time."),
      sliderInput("life", h6("Probability that a planet develops life:"),  
                  min = 0, max = 1, value = 0.13),
      sliderInput("intel", h6("Probability that a planet develops intelligence:"),  
                  min = 0, max = 1, value = 1),
      sliderInput("tech", h6("Probability that a planet develops technology:"),  
                  min = 0, max = 1, value = 0.01),
      br(),
      h4("These variables are better understood. So they are good estimates, but you can change them."),
        
      numericInput("planets", h6("% of stars that form planets (enter 0 - 1):"), value = 1),
      numericInput("habit", h6("% of planets in the habitable zone of a star (enter 0 - 1):"), value = 0.2)),
        
#MAIN
    mainPanel(img(src = "Drake_Equation_by_DivineDesign.png"),
              br(),
              br(),
                  h5("The Drake Equation estimates the number of actively communicating alien civilisations in our galaxy."), 
                  strong("We use a simpler form of the Drake Equation to estimate the number of Alien Civilisations ever to have existed."), 
                  h5("Why? Because we want to understand (as easily as possible) the chances of us really being alone."), 
              br(),
              br(),
                 
                  h3(div("Number of Alien Civilisations = " , style = "color:green")), 
                  em(h3(textOutput('drake'))),
              br(),
              br(),
                  em("Our calculation simply multiplies all the inputs on the left together"),
                  h5("Number of stars:"),
                  h6("Galaxy = 20 000 000 000 000 000 000 000"),
                  h6("Milky way = 100 000 000 000"),
                  h6("Stars within 50 light years = 64 (about)"),
              br(),
              h6("Credit: A.Frank and W.T.Sullivan III (http://arxiv.org/abs/1510.08837)")
    )
  )
))