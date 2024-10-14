
# Statistical Formulas

## 1. Mean (Average)
The mean is the sum of all values divided by the number of values.

$$
\text{Mean} = \frac{\sum_{i=1}^{n} x_i}{n}
$$

Where:
- $x_i$ is each data point,
- $n$ is the number of data points.

## 2. Median
The median is the middle value of the dataset when ordered from least to greatest. If the dataset has an even number of values, the median is the average of the two middle numbers.

## 3. Mode
The mode is the most frequently occurring value in the dataset.

## 4. Interquartile Range (IQR)
The IQR is the range between the first quartile (Q1) and the third quartile (Q3).

$$
\text{IQR} = Q3 - Q1
$$

## 5. First Quartile (Q1)
The first quartile is the median of the lower half of the dataset (25th percentile).

## 6. Third Quartile (Q3)
The third quartile is the median of the upper half of the dataset (75th percentile).

## 7. Variance
Variance measures the dispersion of the dataset. For a sample, it is calculated as:

$$
\text{Variance} = \frac{\sum_{i=1}^{n} (x_i - \bar{x})^2}{n - 1}
$$

Where:
- $x_i$ is each data point,
- $`\bar{x}`$ is the mean,
- $n$ is the number of data points.

## 8. Outliers
Outliers are data points that lie below the lower bound or above the upper bound, defined as:

$$
\text{Lower bound} = Q1 - 1.5 \times \text{IQR}
$$
$$
\text{Upper bound} = Q3 + 1.5 \times \text{IQR}
$$

## 9. Z-score
The Z-score represents the number of standard deviations a data point is from the mean.

$$
Z = \frac{x_i - \bar{x}}{\sigma}
$$

Where:
- $x_i$ is each data point,
- $\bar{x}$ is the mean,
- $\sigma$ is the standard deviation.
