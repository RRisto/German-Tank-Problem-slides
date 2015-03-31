---
title       : German Tank Problem
subtitle    : Simulator
author      : Risto
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## German Tank Problem


You have to guess number of tanks produced size based on serial numbers of few tanks captured. All tanks have sequential serial number. Problems name originates from WWII when allies really had this problem.

- For example you have captured 5 tanks with serial numbers 73, 5, 83, 49, 25

- What is real tank production?

- How would you solve this problem?



--- .class #id

<style>
strong {
  font-weight: bold;
}
</style>

## Simulator

Shiny app for comparing different solutions: https://ristohinno.shinyapps.io/GermanTankProblem/

- **Model 1**, takes the highest serial number captured and say it is total tank production

- **Model 2**, takes model 1 solution and add and add a margin to it (because first model tends to understimate actual tank production)

- **Model 3**, uses formula originally used by allies (at least one of them): $$max + \frac{max}{n} - 1$$ 
where: 

1. max is maximum serial number captured, 

2. n is number of tanks captured






