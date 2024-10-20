# R-squared (Coefficient of Determination)

R-squared is a statistical measure that represents the proportion of the variance in the dependent variable that is explained by the independent variable(s) in a regression model. It indicates how well the model fits the data.

**Range: R-squared values range from 0 to 1:**
- 0: The model does not explain any of the variability of the dependent variable (very poor fit).
- 1: The model explains all the variability in the dependent variable (perfect fit).
- Values closer to 1: Indicate a better fit and that the independent variable(s) are good at predicting the dependent variable.

### Formula:

$$
R^2=1− \frac{SS_{tot}}{SS_{res}}
$$​
 
​
Where:

$SS_{tot}$ : (Sum of Squared Residuals): The sum of the squared differences between the actual and predicted values.

$SS_{res}$ : (Total Sum of Squares): The total variance in the dependent variable, which is the sum of the squared differences between the actual values and the mean of the dependent variable.


### Example:

| Student   | Study Hours (X)   | Exam Score (Y) | ( $\hat{Y}$ ) (Predicted Score) | Residual \( $Y_i - \hat{Y}_i$ \) |  
| ------------- | ------------- | -------------  |---------------------------------|-------------------------------|
1	| 2	|   55 | 38.5+8.5(2)=55.5        | 55 - 55.5 = -0.5                      |
2	| 3 |	60 | 38.5+8.5(3)=64.0        | 60 - 64.0 = -4.0                      |
3	| 1 |	50 | 38.5+8.5(1)=47.0        | 50 - 47.0 = 3.0                       |
4	| 4 |	70 | 38.5+8.5(4)=72.5        | 70 - 72.5 = -2.5                      |
5	| 5 |	85 | 38.5+8.5(5)=81.0        | 85 - 81.0 = 4.0                       |

#### 1. Calculate $SS_{tot}$:
This is the sum of the squared differences between the actual exam scores and the mean of the exam scores.

-	Mean of Y (exam scores) = 
$$
 \frac{55 + 60 + 50 + 70 + 85}{5} = 64
$$

- $SS_{tot}$ = 
$$
(55−64)^2+(60−64)^2+(50−64)^2+(70−64)^2+(85−64)^2
$$

- $SS_{tot}$  = 
$$
SStot=81+16+196+36+441=770
$$

#### 2. Calculate $SS_{res}$:

This is the sum of the squared differences between the actual exam scores and the predicted exam scores.


$$
SS_{res} = (55 - 55.5)^2 + (60 - 64)^2 + (50 - 47)^2 + (70 - 72.5)^2 + (85 - 81)^2 
$$

$$
SS_{res} = (-0.5)^2 + (-4)^2 + (3)^2 + (-2.5)^2 + (4)^2
$$

$$
SS_{res} = 0.25 + 16 + 9 + 6.25 + 16 = 47.5
$$

#### 3. Calculate $𝑅^2$ :

Using the formula: 

$$
R^2= 1− \frac{SS_{tot}}{SS_{res}} = 1− \frac{47.5}{770}  \approx 1 − 0.0617 = 0.938 
$$​

#### Interpretation of R-squared:

**$𝑅^2$ of 0.938 means that 93.8%, This indicates a very strong fit.**