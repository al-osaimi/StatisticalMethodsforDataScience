
# Linear Regression
Linear Regression is a statistical method used to model the relationship between two variables by fitting a linear equation to observed data.


### The goal of regression analysis

The objective of regression analysis is to use information about one variable, x, to predict the value of a second variable, y. 

#### Key Components:

- Dependent Variable $Y$: The variable you want to predict or explain.
- Independent Variable $X$: The variable you use to predict the dependent variable.

- Regression Equation: 

$$
Y=a+bX
$$

where:

- $Y$ = dependent variable (exam score)
- $X$ = independent variable (study hours)
- $a$ = intercept
- $b$ = slope


## Example

You have the following dataset showing the number of hours spent practicing and the performance score in a test for 5 students, the slope is 8,2 and intercept is 38,5 . 

- A) Predict the exam score when student a student studies for 6 hours.
- B) Predict the exam score when student a student studies for 5 hours.


| Student   | Study Hours (X)   | Exam Score (Y) |
| ------------- | ------------- | ------------- |
1	| 2	|   55
2	| 3 |	60
3	| 1 |	50
4	| 4 |	70
5	| 5 |	85


$$
Y=38.5+8.5X
$$

#### Predicting with the Regression Line:

- If a student studies for 6 hours:

$$
Y = 38.5+8.5(6) = 38.5+51 = 89.5
$$

- If a student studies for 5 hours, the predicted exam score is:

$$
Y = 38.5+8.5(5) = 38.5+34 = 81
$$

> [!TIP]
> The slope (8.5) tells us that for each additional hour of study, the exam score increases by approximately 8.5 points, (6 hours) 89.5 - (slop) 8.5 = 81 (5 hours).

> [!TIP]
> The intercept (38.5) represents the predicted exam score if a student doesn’t study at all (0 hours).


## How to evaluate regression ?


