---
title       : Scrum Budget Calculator
subtitle    : How much are you investing in Scrum?
author      : Salvatore Rinaldo
job         : Scrum Master
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Why? 

Many software organisations adopt Scrum as their development methodology.

However, often environmental barriers exist and prevent product teams from
being able to fully embrace and leverage the principles and the techniques
suggested by the Scrum community. 

As a Scrum Master, I find that one of the ways to raise awareness around
this relatively new methodoloy and the impact it has on your organisation
is to fully understand the impact - including the financial impact - that
adopting Scrum has on your business. 

Are you adopting Scrum? Do you know how much you are investing in it?

---

## How does it work?

Scrum Budget Calculator predicts your annual estimated cost based on simple 
parameters that are specific to your organisation. 

To obtain an annual estimated cost simply enter the following parameters in the UI:

* size of your team, including Scrum Master and Product Owner
* the average annual salary for a member of your team
* the number of working hours per day
* the duration of your iterations (between 1 and 4 weeks)
* number of attendees at review and retrospective meetings

Cost figures are meant to be currency independent. 
For example, the annual cost predicted for a team of 10 working on
2 week iterations (for 7.5 hours a day and 5 days a week) is simply: 


```
## [1] 32000
```

---

## Underlying assumptions

* the size of the team includes the Product Owner and the Scrum Master.
* daily standups (a Scrum ceremony) will normally last 15 minutes a day
* daily standups will not take place on sprint planning and end of sprint days.
* iterations (a.k.a. 'sprints') are between 1 week and 4 weeks long
* 2 hours are sufficient to plan a 1 week iteration; 4 hours for a 2 week iteration ...  

---

## Future developments

These are some of the features that are high on our backlog: 

* break down and display of cost by ceremony 
* backlog refinement meetings will be added to the list of Scrum ceremonies
* general UI and layout improvements 

For more info, visit https://salrin.shinyapps.io/scrumbudgetcalculator
