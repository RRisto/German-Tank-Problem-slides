
German Tank Problem Shiny app
========================================================
author: Risto
date: April 2015

German Tank Problem app
========================================================

You have to guess number of tanks produced size based on serial numbers of few tanks captured. All tanks have sequential serial number.

- For example you have captured 5 tanks with serial numbers 73, 5, 83, 49, 25. What is actual tank production?

- [Shiny application](https://ristohinno.shinyapps.io/GermanTankProblem/) provides and compares different solutions

-[Github repository](https://github.com/RRisto/GermanTankProblem)

![alt text](figures/tank.png)

Models for simulation
========================================================

- Change number of **tanks captured**, actual tank **production range** and **margin** for model 2 and compare how good different models are:

- **[Model 1](https://ristohinno.shinyapps.io/GermanTankProblem/)**, highest serial number captured = actual tank production

- **[Model 2](https://ristohinno.shinyapps.io/GermanTankProblem/)**, model 1 answer +(model 1 answer * margin) = actual tank production

- **[Model 3](https://ristohinno.shinyapps.io/GermanTankProblem/)**, formula originally used by allies: $$actual\ tank\ production = max + \frac{max}{n} - 1$$ (max - maximum serial number captured; n - number of tanks captured)

Compare different models (1)
========================================================

App simulates 10 guesses per model for each tank in actual chosen prodcution range. Accuracy of models is assessed by residuals:

 - residuals (as % difference from actual production) summary:


```
    Model     Mean  Median    Sd
1 Model 1 -16.2327 -12.498 14.13
2 Model 2 -12.0443  -8.123 14.84
3 Model 3  -0.2906   4.193 16.96
```

![alt text](figures/crushed2.png)

Compare different models (2)
========================================================

 - residuals histogram:
 
![plot of chunk unnamed-chunk-2](german tank problem-figure/unnamed-chunk-2.png) 
Have a nice [tank hunt](https://ristohinno.shinyapps.io/GermanTankProblem/)!
