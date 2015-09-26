library("shiny")

totalCost <- function(avgsal,iteration,teamsize,attendees_review,attendees_retro,workinghours)
{
    iterations_per_year <- 52 / iteration
    standups_per_sprint <- (5 * iteration) - 2 #5 working days a week; no standups on sprint planning/review day
    hourly_employee_cost <- avgsal / 12 / 30 / workinghours 
    duration_of_daily_standup <- 0.25 # daily standups normally last 15 minutes 
    cost_of_daily_standup_per_sprint <- standups_per_sprint * hourly_employee_cost * duration_of_daily_standup * teamsize
    cost_of_planning_sprint <- 2* iteration * hourly_employee_cost * teamsize
    cost_of_sprint_review <- attendees_review * hourly_employee_cost
    cost_of_retrospective <- hourly_employee_cost * attendees_retro 
    cost_of_one_sprint <- cost_of_daily_standup_per_sprint + cost_of_planning_sprint + cost_of_sprint_review + cost_of_retrospective
    return (cost_of_one_sprint * iterations_per_year)  
}

shinyServer(
    function(input,output){
        x <- reactive(totalCost(input$avgsal,input$iteration,input$teamsize,input$attendees_review,input$attendees_retro,input$workinghours))
        output$prediction <- renderPrint({x()})
    }
)
