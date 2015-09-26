library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Scrum budget calculator"),
    sidebarPanel(
        numericInput('avgsal', "Team member average annual salary",60000,min=1),
        sliderInput("iteration", "Duration of an interation (in weeks):", min=1, max=4, value=2),
        numericInput('teamsize', 'Team size',12,min=0),
        numericInput('attendees_review', 'Number of attendees at sprint review meetings',12,min=0),
        numericInput('attendees_retro', 'Number of attendees at retrospective meetings',12,min=0),
        numericInput('workinghours', 'Working hours per day',7.5,min=1)
    ),        
    mainPanel(
        h3("Estimated annual cost:"),
        verbatimTextOutput("prediction"),
        br(""),
        p("SCRUM is an increasingly popular Agile methodology adopted by a significant number of software organisations."),
        p("Does the adoption of this methodology introduce a cost for your business?"),
        p("How much money are you investing in SCRUM? It is not easy to predict."), 
        p("However we can try and predict the cost of running SCRUM ceremonies."),
        p("This SCRUM Budget Calculator predicts the cost of running SCRUM ceremonies based on"), 
        p("simple parameters that are specific to the structure of your organisation."),
        br(""),
        p("The prediction is performed using the following assumptions:"),
        withTags({
            ol(
                li("the size of the team includes the Product Owner and the Scrum Master."),
                li("daily standups (a Scrum ceremony) will last 15 minutes a day, on average."),
                li("daily standups will not take place on sprint planning and end of sprint days."),
                li("the average salary field accepts any positive value and is currency independent."),
                li("iterations (a.k.a. 'sprints') cannot be longer than 4 weeks."),
                li("the duration of a planning session in hours = 2 * duration of an interation.") 
            )
        })
        
        )
))
