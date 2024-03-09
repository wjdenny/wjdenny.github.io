---
tags:
  - source
  - topic/data
  - topic/statistics
alias:  "Statistics for Linguists"
type: book
title: "Statistics for Linguists"
author: "Bodo Winter"
publisher: "Routledge"
date: 2020
---
# Statistics for Linguists
[[Bodo Winter]] wrote this book for [[2020]].

> [!summary] Summary
> %% Write a one-sentence summary of the source. %%

## Notes

> as you will be using the `<-` assign operator constantly, make sure to learn its shortcut: ALT + minus. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=23|page 6]]

I never knew about this. Unfortunately, it does not work in VSCode out of the box. I should [learn about other VSCode shortcuts, though](https://www.crio.do/blog/vs-code-shortcuts/). This ALT + minus only saves one extra keystroke, though.

> The `mode(x)` and `class(x)` function can be used to assess vector types. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=41|page 24]]

Here I've been using `str(x)` like a chump.

See also `range(x)` and `diff(range(x))`

- [x] continue writing up [flashcards in mochi](https://app.mochi.cards/decks/b0b192fd-7384-4081-afda-12af134f09b6/kLQG1RNP/Statistics) 📅 2023-06-01 ✅ 2023-06-01

`ncol(df)` counts columns just as `nrow(df)` counts rows.
`colnames(df)` returns a character vector of column names.

Some packages have a `citation("package")` result that tells you how to cite the package. `citation()` would cite R itself.

*An R Companion to Applied Regression* might be a useful book.

The package `swirl` teaches how to use R using R. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=41|page 24]]
```r
install.packages("swirl")
library(swirl)
swirl()
```

> The argument for rows is called `n` in line with the statistical convention to use the letter 'N' to represent the number of data points. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=57|page 40]]

> Scientific progress is cumulative-it builds on past achievements. However, cumulative progress is only possible if results are both 'replicable' and 'reproducible'. What's the difference between replicability and reproducibility? In short: replicability characterizes the ability to replicate a study, that is, being able to conduct the same study again (with new data). Reproducibility characterizes the more basic requirement of being able to reproduce a researcher's analysis of a given dataset on one's own machine. 
> 
> A study is replicable if another researcher can read the methods section of a paper and has enough information to replicate the study with new participants. Recently, researchers have found that many famous results failed to replicate, which has led to the 'replication crisis' (Open Science Collaboration, 2015; Nieuwland et al., 2018). Linguistics doesn't have a replication crisis yet, but it's looming around the comer. There already are important linguistic results that failed to replicate, such as the idea that there is a bilingual advantage in certain cognitive processing tasks (Paap & Greenberg, 2013; de Bruin, Bak, & Della Sella, 2015). Other linguistic findings that failed to replicate involve sentence processing (Nieuwland et al., 2018; Stack, James, & Watson, 2018) and embodied language understanding (Papesh, 2015). [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=64|page 47]]

[[One of the reasons citations and attribution are valued in higher education is that scientific progress depends on it]] The value of progress is a major difference between cultures as well, which might help explain why cultures that do not value progress as highly as others would also not value citations or attribution in their pursuit of knowledge.

> Even expert analysts will come to different conclusions when given the same dataset (Silberzahn et al., 2018). There are myriads of decisions to make in an analysis, what some people call "researcher degrees of freedom" (Simmons, Nelson, & Simonsohn, 2011), and what others call "the garden of forking paths" (Gelman & Loken, 2014). Without the ability to trace what a researcher did in their analysis, these choices remain hidden. Reproducibility requires us to lay all of this open. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=65|page 48]]

> It is a 'uniform' distribution because the probability is uniformly spread across all possible outcomes. It is furthermore a 'discrete' distribution because there are only six particular outcomes and no in-betweens. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=71|page 54]]

A uniform distribution is one where the probability of any given response is the same. 

A discrete distribution is one where there are a limited number of possible responses.

> A more technical name for this distribution is the Gaussian distribution, after the mathematician Carl Friedrich Gauss. The normal distribution is a distribution for continuous data, centered symmetrically around the mean with the bulk of data lying close to the mean. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=71|page 54]]

Mean is the sum of all x divided by the number of x
$$\bar x = {\sum{x} \over N}$$
> While the mean and standard deviation can be computed for any data, these two numbers have special meaning in the context of the normal distribution: they are the distribution's 'parameters'. A parameter is a property of a distribution. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=73|page 56]]

> It is conventional to use Greek letters when talking about the parameters of theoretical distributions. When talking of empirically observed data, it is conventional to use Roman letters instead. This is not just an arbitrary convention-you will later see that this notation is quite important. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=73|page 56]]

> Figure 3.2b also shows an important property of the normal distribution: the areas highlighted with '0.34' add up to a probability of 0.34, and so on. Together, the two middle parts add up to p = 0.68. If you were to randomly draw numbers from this distribution, 68% of the time, you would end up with a number that is between -1 and + 1 standard deviations. If you add the next two areas (striped) to this, the probability mass under the curve adds up top= 0.95. Thus, if you were to draw random data points from this distribution, 95% of the time you would end up with a number that is between -2 and +2 standard deviations. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=73|page 56]]

> Finally, it is worth noting that, because the mean and standard deviation work so nicely together, it's generally a good idea to report both. In particular, means without a measure of spread are not very informative. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=74|page 57]]

[[It's a good idea to report both the mean and standard deviation of parametric distributions.]]

> The median is sometimes reported because it is more robust to variations in extreme values than the mean. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=75|page 58]]

[[The median is less affected by extreme values than the mean.]]

> The extent of the box covers 50% of the data, that is, 25% of the data above and below the median. The ends of the box have specific names: they are the first, second, and third 'quartile'. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=76|page 59]]

![[Pasted image 20230530003703.png]]
How could I do a similar chart in R?

> Words that fall outside the range of the whiskers are often called outliers, but I prefer the term 'extreme value', since 'outlier' suggests that something is qualitatively different from the other data points, which is often used to justify exclusions. 5 [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=77|page 60]]

> don't hesitate to re-state the definition of the whiskers in the figure captions-it's good to give people reminders. 6 Describing the meaning of the individual plot components in the figure captions should be done anyway. For example, sometimes researchers use the range of the data (minimum and maximum) for the whiskers of a boxplot, [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=77|page 60]]

> You will notice that with only 20 data points it is often quite difficult to see that the data was drawn from an underlying normal distribution. If you change n to a very large number, the histograms should be much more Gaussian in shape. The take-home message here is that it is often difficult to tell what the appropriate reference distribu- tion is for very small sample sizes. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=81|page 64]]

[[Small sample sizes make it difficult to tell the type of distribution.]]

A common calculation to make is to do plus or minus a certain number. I wonder if I could write a `+-` function in R to do this and return a vector.

```r
5 +- 2 # c(3, 7)
```

> `quantile(var$Val, c(0.16, 0.84))` # get the inner 68% (within $s \pm \bar x$)

The inner 68% (within $s \pm \bar x$) is the range between the 16th and 84th quantile.

> Everything up to this point has dealt with 'univariate' distributions. That is, you always only considered one set of numbers at a time. The next chapter will progress to bivariate data structures, focusing on the relationship between two sets of data. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=84|page 67]]

> conditional means-means that shift around depending on what value some other piece of data assumes. In modeling such conditional means, you move from the topic of univariate statistics (describing single variables) to bivariate statistics (describing the relationship between two variables). [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=86|page 69]]

> The relationship between response duration and frequency is neatly summarized by a line. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=86|page 69]]

The line is a model of two variables-- just as the mean is model of 1 variable; because there are two points to consider instead of 1. So, would three points (a trivariate analysis) be a triangle? Not just that; but a triangle-shaped 2d plane within 3d space. Exactly! In fact, [it's been done!](https://www.researchgate.net/figure/Three-dimensional-representation-of-the-trivariate-model-describing-the-relationship_fig3_304032904)

> I prefer to speak of 'modeling y as a function of x'. Researchers often use the terms 'independent variable' and 'dependent variable' (the dependent variable y depends on the independent variable x). I prefer to speak of x as a 'predictor', as it allows forming predictions for y, which I often call the 'response' or 'outcome' variable. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=86|page 69--70]]

> 'correlation is not causation', as the regression model cannot tell you whether there actually is a causal relationship between x and y. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=87|page 70]]

> The slope is defined as the change in y (delta'delta 'delta x'). [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=88|page 71]]

> the intercept is the predicted y-value for x = 0. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=88|page 71]]

> In math-speak, the line is said to be 'uniquely specified' by these two numbers. The intercept and slope are both 'coefficients' of the regression model. The letters b0 and b 1,are com- monly used to represent the intercept and the slope. Thus, the regression line has the following form: [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=89|page 72]]

$$ y = b_0 + b_1x$$
> Because the slope has the unit ${ms}\over {freq}$, multiplying it by a frequency value returns milliseconds. That is, ${{ms}\over {freq}} {freq} = {ms}$  (the two frequency units cancel each other out), highlighting how this regression model predicts response durations. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=89|page 72]]

> The expected response duration for script is 670ms. Such a prediction is called a 'fitted value', as it results from 'fitting' a regression model to a dataset. In fact, all points along the regression line are fitted values. However, not all of these values may be equally sensible. Forming predictions based on a regression model generally only makes sense within the range of the attested data (this is called 'interpolation'). Regression models may produce odd results when predicting beyond the range of the attested data, what is called 'extrapolating'. Word frequencies below zero make no sense, nevertheless, the regression model happily allows us to form predictions for negative values. For example, for the impossible x-value of-100, the model predicts a response duration of 7880ms. The model doesn't 'know' that negative frequencies make no sense. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=89|page 72--73]]

> The extent to which the model is wrong for any specific data point is quantified by the residuals, which are the vertical distances of the observed data from the regression line [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=90|page 73]]

> observed values = fitted values + residuals
> 
> This equation can be rewritten the following way: 
> 
> residuals =observed values - fitted values 
> 
> [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=90|page 73]]

> the residuals represent the information that is left over after removing the effect of the explanatory variables [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=91|page 74]]

> This is the "b0 + b1 times x" part of the above equation. This part is deterministic in the sense that for any value of x that you plug in, the equation will always yield the same result. Then, there is a 'stochastic' part of the model that messes those predictions up, represented by e. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=91|page 74]]

> For regression, the assumptions discussed here are actually about the error term e, that is, they relate to the residuals of the model. If the model satisfies the normality assumption, its residuals are approximately normally distributed. If the model satisfies the constant variance assumption (also known as 'homoscedasticity'), the spread of the residuals should be about equal while moving along the regression line. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=91|page 74]]

> It is important to emphasize that the normality assumption is not about the response but about the residuals_ It is possible that a model of a skewed response measure has normally distributed residuals [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=91|page 74]]

> A well-fitting model will have small residuals. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=91|page 74]]

> To get an overall measure of 'misfit', the residuals can be squared and summed. The corresponding measure is called 'sum of squared errors' (SSE) [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=92|page 75]]

```mochi
What is a sum of squared errors (SSE)?
---
It is a standard measure of fit of a linear regression model.
```

> Regression is sometimes called 'least squares regression' because it yields the coefficients that minimize the squared residuals. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=92|page 75]]

> Let's talk a bit more about the zero-slope model (Figure 4.5a). You can fit such a model by dropping the frequency predictor from your equation, which is the same as assuming that the slope is 0. 
> 
> ${response\ duration} = b_0$
>
> [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=92|page 75]]

```mochi
What is a null model, or zero-slope model?
---
It is a model that assumes there is no relationship between the two variables.
```

```mochi
Why are squared errors useful?
---
It removes negative values and prevents them from canceling out positive values in a sum operation. Also, the exact scale of the error is not important, so a non-linear transformation is tolerable.
```

```mochi
Why is a null model useful?
---
It lets you compare residuals between a model that assumes a relationship and a model that does not. The sum of squared errors (residuals) is compared between the two to test the fit of the actual model.
```

> Why squaring? One reason is that this way you get rid of the negative signs. Otherwise the positive and negative residuals would cancel each other out. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=92|page 75]]

> This 'intercept-only model' model has not been instructed to look for an effect of frequency. What is the best estimate for the intercept in this case? In the absence of any other information, the best estimate is the mean, as it is the value that is closest to all data points (see Chapter 3). 
> 
> The intercept-only model can be a useful a reference model or 'null model' for comparing SSE values. Remember that the main regression model (with frequency predictor) had an SSE of 42,609. Without context, this number is pretty meaningless; it is an unstandardized statistic that changes depending on the metric of the response. For example, if you measured response durations in seconds, rather than milliseconds, the SSE of our main model would shrink from 42,609 to 0.042609. The 'null model' without a slope can be used to put the SSE of the main model into perspective. It can be used to compute a 'standardized' measure of model fit, namely, R squared ('R squared'). The formula for R squared is as follows: [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=93|page 76]]
> $$ $R^2$ = 1 - {{SSE_{model}\over {SSE}_{null}}} $$
```mochi
What is $R^2$?
---
It is a standard measure of model fit.
```

```mochi
Why is $R^2$ useful?
---
It compares the sum of squared residuals of the model with those of a null model to provide standardized way of comparing models in terms of the raw value of their residuals.
```

```mochi
What is the formula for $R^2$?
---
$$ $R^2$ = 1 - {{SSE_{1}\over {SSE}_{0}}} $$
```

```mochi
What does a given $R^2$ value imply?
---
That much of the variation in the $\mathrm{y}$ distribution can be explained by $\mathrm{x}$. Conversely, that $1 - R^2$ of the $\mathrm{y}$ distribution is not explained by $\mathrm{y}$. This is also called its *effect size*.
```

> This number can be conceptualized as how much variance is 'described' by a model. In this case, 72% of the variation in response durations can be accounted for by incorporating word frequency into the model. Conversely, 32% of the variation in response durations is due to chance, or due to factors the model omits. In actual linguistic data, R squared values as high as 0. 72 are almost unheard of Language is complex and humans are messy, so our models rarely account for that much variance. 
> 
> R squared is actually a measure of 'effect size'. Specifically, R squared measures the strength of the relationship between two variables (see Nakagawa & Cuthill, 2007). R squared values range from 0 to 1. Values closer to one indicate better model fits as well as stronger effects, as shown in Figure 4.6. 
> 
> Standardized metrics of effect size such as R squared should always be supplemented by a thor- ough interpretation of the unstandardized coefficients. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=94|page 77]]

> People often say that $R^2$ measures the 'variance explained'. An informative blog post by Jan Vanhove (accessed October 16, 2018) recommends against this terminology, among other reasons because it sounds too causal: https://janhove.github.io/analysis/2016/04/22/r-squared [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=94|page 77]]

> I want you to notice the similarity between this command and the regression equation ( $y = b_0 + b_1 * x + e$) . The error term is what's going to create residuals in the following regression analysis. Next, rerun the plotting command, which yields the plot to the right of Figure 4.7. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=95|page 78]]

```r
# Constructing a distribution for linear regression.

n <- 5000     # the number of observations
x <- rnorm(n) # x
b0 <- 10      # the intercept
b1 <- 3.5     # the slope
e <- rnorm(n) # error

# y equals intercept plus slope times x plus error
y <- b0 + b1 * x + e 
```

> For this, use the `lm()` function, which stands for linear model. The syntax used in 'y ~ x' is called 'formula notation', and it can be paraphrased as 'y as a function of x' Usually, you want to save linear models in R objects so that you can access them for later use. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=96|page 79]]

> The `fitted()` and `residuals()` functions can be used to retrieve the model's fitted values and residuals. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=96|page 79]]

> The `coef()` function retrieves the coefficients of a linear model. The output of this is a vector of coefficients. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=97|page 80]]

Remember, coefficients just means the two other ("b") factors in the equation.
$$y = b_0 + b_1 * x + e$$

The way coefficients are reported in R seems a little confusing. `coef(model)` returns a named vector with names "(Intercept)" and "x". Intercept is $b_0$ which makes sense, but x is not the x we've been talking about (not the vector of x values from which we want to predict y values); it's $b_1$ or slope.

> The broom package (Robinson, 2017) provides tidy model outputs, implemented via the `tidy()` function. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=99|page 82]]

```mochi
Which tidyverse function can provide a useful output of model information?
---
`tidy`
```

> The corresponding `glance()` function from the `broom` package gives you a 'glance' of the overall model performance (so far you only know $$R^2$$--some of the other quantities will be explained in later chapters). [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=100|page 83]]

Apparently `geom_smooth()` does the `lm()` call for you. When doing linear regression in R (especially with tidyverse), you basically just need to make sure you meet the required assumptions. Which are... ?

- Normal distribution
- Constant variance (homoscedasticity) in the error/residuals; i.e., actual data points vary consistently above or below the regression line.

> The intercept is represented by the placeholder '1 '. In R's model formula syntax, the intercept is always fitted by default, even if this is not explicitly specified. In other words, the shorthand notation 'y ~ x' actually fits the model corresponding to the formula 'y ~ 1 + x'. The second function call is more explicit: it can be paraphrased as 'estimate not only a slope for x, but also an intercept'. 
> 
> This knowledge can be used to specify an intercept-only model (as was discussed above, see equation E4.8). Let's do this for the data at hand: [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=100|page 83--84]]

> It is no coincidence that the placeholder is the number one. However, since we don't focus on the mathematical details here, it is beyond the scope of this book to explain why. (Just to pique your interest: this has to do with the matrix algebra machinery that is underlying linear models.) [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=100|page 83]]

- [ ] I want to know why.

It doesn't seem like it's necessary to create the null model, unless you want to plot it, I suppose. The $$R^2$$ is generated by the `lm()` call already.

> The model predicts only one number, the intercept. No matter what value x assumes, the model predicts the same number, the mean. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=101|page 84]]

> The residuals are assumed to be normally distributed and homoscedastic (constant variance). [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=101|page 84]]

```r
# Calculating $$R^2$$ by hand

model <- lm(y ~ x)
model_null <- lm(y ~ 1)

res <- residuals(model)
res_null <- residuals(model_null)

1 - (sum(res ^ 2) / sum(res_null ^ 2)) # $$R^2$$
```

```mochi
Which R function returns a vector of residuals of a given linear regression model?
---
`residuals`
```

- [x] highlight key points, create statements, link notes, make flashcards ⏳ 2023-06-05 ✅ 2023-05-30

```mochi
What is the formula for $R^2$?
---
$$$R^2$ = 1 - {\sum{$R^2$} \over \sum{r_{0}^2}}$$
```

> Linear transformations are useful, because they allow you to represent your data in a metric that is suitable to you and your audience. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=103|page 86]]

> When dealing with interactions (see Chapter 8), centering is absolutely essential for avoiding mistakes in interpreting a model. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=103|page 86]]

For example, a smaller slope won't necessarily mean a smaller effect than another slope because the distribution of that variable might just have less variability around the mean.

```mochi
What is the formula used to center a variable?
---
$${\mathrm{x} - \bar{\mathrm{x}}} \over \mathrm{s}$$
```

> The figure displays two additional x-axes, one for the centered data, and one for the standardized data. This highlights how linear transformations just change the units on the x-axis; they leave the shape of the data intact. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=105|page 88]]

> So what's standardizing good for? Standardizing is a way of getting rid of a variable's metric. In a situation with multiple variables, each variable may have a different standard deviation, but by dividing each variable by the respective standard deviation, it is possible to convert all variables into a scale of standard units. This sometimes may help in making variables comparable, for example, when assessing the relative impact of multiple predictors (see Chapter 6). [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=106|page 89]]

```mochi
If you want to make multiple variables in linear regression comparable, what must you do?
---
standardize the values of each variable
```

> So far, this chapter has only discussed cases in which the predictor is standardized. What if you standardized the response variable as well? In that case, neither the x-values nor the y-values preserve their original metric; both are standardized. Thus, the corresponding regression model will estimate bow much change in y standard units results from a corresponding change in x standard units. The resulting slope actually has a special name, it is Pearson's r, the 'correlation coefficient'.  [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=106|page 89]]

```mochi
How does one calculate Pearson's r using a linear regression model?
---
Standardize both the independent and dependent variables and use the slope coefficient.
```

> Pearson's r being a standardized measure of correlation means that you do not need to know the underlying metric of the data in order to understand whether two variables are strongly correlated or not. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=106|page 89]]

```mochi
What is the benefit of standardizing a distribution?
---
You do not need to know the underlying metric to interpret and compare numbers.
```

> You have already seen another standardized statistic in this book, namely, $R^2$, the 'coefficient of determination' (see Chapter 4). Recall that this number measures the 'variance described' by a model. When a correlation is very strong, this also means that a lot of variance is described. For simple linear regression models with only one predictor, $R^2$ is actually the squared correlation coefficient.  [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=106|page 89--90]]

> Positive skew is ubiquitous in linguistic data. For example, reaction time data will almost always be skewed, because there is a natural lower limit to how quickly somebody can respond. This limit is determined by how quickly the brain can recognize a stimulus and initiate a motor response, as well as by how quickly it is physically possible to move one's hand to press a button. As a result of these factors, very short response durations are impossible. However, very long durations are possible and they occasionally occur. Many distributions that have a natural lower bound exhibit positive skew. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=107|page 90]]

> Besides having a lower bound, there are other, more theoretically interesting reasons for positive skew in linguistic and nonlinguistic data (see Kello, Anderson, Holden, & Van Orden, 2008; Kello, Brown, Ferrer-i-Cancho, Holden, Linkenkaer-Hansen, Rhodes, & Van Orden, 2010).  [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=107|page 90]]

```mochi
When should you log-transform a distribution?
---
Use log-transform when the data has a strong positive skew.
```

```mochi
What does it mean if a distribution has a positive skew?
---
It means there are values that are extremely high relative to the mean.
The data has more values on the lower end of the range. 
```

> The logarith1n takes large numbers and shrinks them. The exponential function takes small numbers and grows them. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=108|page 91]]

```mochi
What does the logarithm do to a distribution?
---
It shrinks larger numbers.
It has a compressing effect.
```

```mochi
What does the exponential function do to a distribution?
---
It grows smaller numbers.
```

```mochi
What is the inverse of the logarithm?
---
the exponential function
```

```mochi
What is the inverse of the exponential function?
---
the logarithm
```

> This also means that large numbers, such as 1000, shrink disproportionately more than small numbers when subjected to a log-transform. The log10 of 10 is 1, which is a difference of 9 between the logarithm and the raw number. The log10 of 1000 is 3, which is a difference of 998. Logarithms thus have a 'compressing' effect on the data, which also means that they change the shape of the distribution, as seen in Figure 5.4b. Because the log-transform affects some numbers more than others, it is not a linear transformation. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=109|page 92]]

> In R, the default log function is log(). This is the 'natural logarithm', which is the logarithm to the base e, the special number 2.718282. This number is the default log because e is useful for a number of calculus applications, and this function also features prominently in many areas of statistics (see Chapter 12 and 13). If somebody tells you that they log-transformed the data without stating the base of the logarithm, your best bet is that they used the natural logarithm. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=109|page 92]]

```mochi
If someone has not reported the base of their logarithm, what is likely to be the base?
---
$$e = 2.718282$$
```

> Throughout this book and in my research, I commonly use the log10 function primarily because it is easier to interpret: it's easier to multiply 1 Os with each other than lots of es. For example, if somebody reports a log10 value of 6.5, then I know that the original number was somewhere between a number that had 6 zeros ( one million: 1000000) and 7 zeros (ten million: 10000000). Similar mental calculations aren't as easy fore [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=110|page 93]]

```mochi
Why is it better to use $\mathrm{log}_{10}$ instead of $\mathrm{log}_e$?
---
because powers of 10 are easier to work with, mentally.
```

> For the log10 function, there is no equivalent of the `exp()` function. Instead, you have to use powers of 10. If you had a log10 response duration of 3.5, the following command gives you the corresponding raw number: `10 ^ 3. 5` [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=110|page 93]]

> Estimates of the intensity of perceptual stimuli, such as weights and durations, also follow logarithmic patterns (Stevens, 1957). Logarithmic scaling may even have deep roots in our neural architecture (Buzsaki & Mizuseki, 2014) 
> 
> In linguistics, the seminal work by Zipf (1949) has shown that a number of linguistic variables, such as word length or the number of dictionary meanings, track the logarithm of word frequency, rather than the raw frequency. Smith and Levy (2013) discuss evidence that processing times are scaled logarithmically. Many acoustic variables in phonetics are also scaled logarithmically or semi-logarithmically in perception, such as loudness (the decibel scale) or pitch (the bark scale). Thus, not only do logarithms help researchers fit more appropriate regression models, they are also often theoretically motivated. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=111|page 94]]

```mochi
There are many cases were using logarithm makes sense. what are 3 examples?
---
- Word length tracks the logarithm of word frequency.
- Number of dictionary definitions tracks the logarithm of word frequency.
- Loudness (decibel scale) is scaled logarithmically.
- Pitch (bark sacle) is scaled logarithmically.
```

> While it is often useful to fit a regression model on log-transformed data (due to assumptions, influential values, etc.), you may still want to interpret your model in terms of raw milliseconds. Thus, you may want to 'back-transform' the log predictions of your model into the corresponding millisecond predictions [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=114|page 97]]

````mochi
How can I reverse this transformation?

```r
log10(x)
```
---
```r
10^x
```
````

> Newcomers to statistical modeling seem to like the `scale()` function, but I recommend constructing centered and standardized variables 'by hand'. This is not only more explicit, but `scale()` does a number of things behind the scenes that may sometimes cause problem [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=116|page 99]]

It's better to center and standardize by hand instead of using functions.

> For pedagogical reasons, it's useful to recreate the output of `cor()` using the `lm()` function. For this, you simply have to run a regression model where both the response and the predictor are z-scored. In addition, you need to prevent the regression model from attempting to estimate an intercept. Notice that the intercept does not have to be estimated, as we know it's zero anyway (since both x and y are standardized). To tell the linear model function that you don't want to estimate an intercept, you add' -1' to the model equation (remember from Chapter 4.8 that '1' acts as a placeholder for the intercept [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=118|page 101]]

````mochi
How do you instruct the `lm` function not to estimate an intercept?
---
Use `-1` in the formula.

```r
lm(y ~ -1 + x)
```
````

> To make matters worse, phoneticians have yet another use for the term 'normalizing' that's worth discussing here for a second. Particularly when studying speech production, researchers sometimes 'normalize' speaker characteristics out of a dataset. For example, each speaker has a different vocal tract, which affects vowel acoustics. If you wanted vowel acoustics 'unaffected' by a speaker's idiosyncratic physiology, you could take a particular speaker's mean and standard deviation to standardize all of the data points from that speaker. For the next speaker, you would do the same, using their respective mean and standard deviation. This practice ceases to be a linear transformation, because the means and standard deviations used for standardizing are different across speakers. So, this practice does affect the relationships between the data points. z-scoring 'within speaker' has little to do with the type of linear transformation that is discussed here, which merely serves to express regression slopes in standard units. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=118|page 101]]

So, the thing with ELA start levels and terms spent in LA was not a linear transformation, but one method of normalizing the values.

```mochi
Why should you always explain what you mean by *normalizing*?
---
because the term can mean different things in different fields or even among different researchers
```

```mochi
What is the formula for a multiple regression model?
---
$$\mathrm{y} = \mathrm{b}_0 + \mathrm{b}_1\mathrm{x} + \mathrm{b}_2\mathrm{x} + \dots + e$$
```

> The regression model turns out to describe 38% of the variance in response durations ($R^2$ = 0.38). But can all of this variance really be attributed to frequency? Any regression model only knows about what its user tells it to look at. Because this model only knows about frequency, the effect of other variables that are correlated with frequency may be conflated with the frequency effect. For example, it's known since Zipf's work that more frequent words tend to be shorter than less frequent words (Zipf, 1949). Clearly, one can expect that shorter words are read more quickly, so perhaps the frequency effect seen in equation E6.2 is in part due to word length. To assess the influence of frequency while holding word length constant, you can add word length (number of phonemes) as an additional predictor to the model. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=120|page 103]]

You can add additional independent variables as predictors in a model to figure out what is really causing the effect.

```mochi
Which coefficient(s) in a simple linear regression change after centering the independent variable?
---
intercept
```

```mochi
Which coefficient(s) in a simple linear regression change after standardizing the independent variable?
---
slope
```

```mochi
Which coefficient(s) in a simple linear regression change after log-transforming the independent variable?
---
slope
```

> Once one controls for word length, the effect of frequency does not appear as strong [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=121|page 104]]

This is how you "control" for other variables; you add them to a linear regression model.

> **It is important to recognize that ==multiple regression is not the same as running lots of simple regressions==** (see Morrissey & Ruxton, 2018 for an illustrative explanation). **The coefficients in multiple regression assume a different meaning; specifically, each coefficient becomes a partial regression coefficient, ==measuring the effect of one predictor while holding all other predictors constant==.** [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=121|page 104]]

```mochi
What does each coefficient in a multiple regression measure?
---
It measures the effect of one predictor while holding all other predictors constant.
```

> Let's think about what this means in the case of the word frequency model above. The partial regression coefficient of -70 is to be interpreted as the change in response durations as a function of word frequency, while holding word length constant. Come to think of it, this is actually quite a strange quantity, because in actual language word length and word frequency are of course correlated with each other. However, the multiple regression coefficients allow making predictions for highly frequent words that are long, or for very infrequent words that are short. Thus, **the true purpose of moving from simple regression to multiple regression is to disentangle the direct effects of specific variables in a study, with each coefficient representing a variable's influence while statistically controlling for the other variables.** [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=121|page 104--105]]

```mochi
What is the purpose of multiple regression?
---
to disentangle the effects of specific variables while controlling for others
```

> Now that we have all variables in place, let's fit a multiple regression model. Simply list all predictors separated by plus signs. The order in which you enter the predictors into the formula does not matter, as everything is estimated simultaneously. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=123|page 106]]

> ```r
> icon_mdl <- lm(Iconicity ~SER+ CorteseImag + Syst + LoglOFreq, data= icon
> ```

`````mochi
How do you run a multiple linear regression model in R?
---
```r
lm(y ~ x1 + x2 + x3 + ..., data = data)
```
`````

> The Syst predictor ranges from one really small negative number to an equally small positive number. The regression coefficient of the systematicity predictor ( +401.5) is reported in terms of a one-unit change. Given this very narrow range, a one-unit change is a massive jump, in fact, it exceeds the range for which the systematicity measure is attested. 
> 
> This is a telling example of how you always have to keep the metric of each variable in mind when performing multiple regression. What does a one-unit change mean for frequency? What does a one-unit change mean for imageability? And so on.
> 
> Standardization can be used to make the slopes more comparable (see Chapter 5). Remember that standardization involves subtracting the mean ( centering) and subsequently dividing the centered scores by the standard deviation. Since each variable has a different standard deviation, this involves dividing each variable by a different number. In effect, you are dividing the metric of the data out of each variable, which makes the variables more comparable. The following code achieves this for all predictors: 
> 
> ```r
> icon<- mutate(icon, SER_z = scale(SER), Corteseimag z = scale(Corteseimag), Syst z - scale(Syst), Freq_z = scale(LoglOFreq))
> ```
> 
> Now that all variables are standardized, you can fit a new linear model. 
> 
> ```r
> icon_mdl_z <- lm(Iconicity ~ SER_z + Corteseimag_z + Syst_z + Freq_z, data= icon)
> ``` 
> 
> To reiterate a point made in Chapter 5, let's begin by verifying that the $R^2$ value hasn't changed. 
> 
> ```r
> glance(icon_mdl_z)$r.squared 
> [1] 0.2124559 
> ```
> 
> The fact that the R 2 value is the same as mentioned above is a reminder that the underlying model hasn't changed through standardization However, the coefficients are represented in different units:
> 
> ```r
> tidy(icon_mdl_z) %>% select(term, estimate) %>% mutate(estimate = round(estimate, 1))
> ```
>  [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=125|page 108]]

```mochi
What happens if you do not standardize the independent variables of a multiple linear regression model?
---
It's more difficult to interpret the relative effect of each variable. Variables with less variation and range will appear to a stronger effect than they actually do.
```

> A better way to graphically explore the normality assumption is via a 'quantile-quantile' plot (Q-Q plot) [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=126|page 109]]

> According to the constant variance assumption, the error should be equal across the fitted values. This can be investigated via a 'residual plot', as shown in Figure 6.1c. This plots the residuals (y-axis) against the fitted values (x-axis). When the constant variance assumption is satisfied, the spread of the residuals should be approximately equal across the range of fitted values; that is, the residual plot should look basically look like a blob. Any systematic patterns in the residual plot are reasons to be concerned. The residual plot in Figure 6.1c looks pretty good. Perhaps the variance of the residuals funnels out a tad bit towards higher fitted values, but there clearly is no drastic violation of the constant variance assumption. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=126|page 109]]

```mochi
Why are modelling assumptions assesed visually and not mathematically?
---
- Doing so tells us more about the model and the data
- It is difficult to quantitatively define *normality* or *homoscedasticity*
```

```mochi
What test would you use if you needed to test if the data had a normal distribution?
---
Shapiro-Wilk test of normality
```

> The `qqnorm()` creates a Q-Q plot. A Q-Q line can be added into the existing plot with `qqline().`  [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=127|page 110]]

```mochi
What is a Q-Q plot?
---
It's a plot that compares a distribution to a normal distribution.
```

```mochi
How do you build a QQ plot of residuals of a model `m` in base R?
---
qqnnorm(residuals(m))
qqline()
```

```mochi
How do you plot residuals against fitted values of a model `m` in base R?
---
plot(fitted(m), residuals(m))
```

> When doing a multiple regression analysis, collinearity describes situations where one predictor can be predicted by other predictors. Collinearity frequently arises from highly correlated predictors, and it makes regression models harder to interpret (see Zuur et aL, 2010: 9).  [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=129|page 112]]

```mochi
What is collinearity?
---
It is where one predictor can be predicted by another predictor.
```

```mochi
Why is collinearity a problem?
---
It makes models difficult to interpret because it affects the slope of its collinear variables.
```

> Notice how much the slope of x2 has changed. It's negative, even though the data has been set up so that x2 and y are positively related. When dealing with strong collinearity, it often happens that the coefficients change drastically depending on which predictors are in the model. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=131|page 114]]

> To assess whether you have to worry about collinearity in your analysis, you can use 'variance inflation factors' (VIFs). These measure the degree to which one predictor can be accounted for by the other predictors. There are different recommendations for what constitutes a worrisome VIF value, with some recommending that VIF values larger than 10 indicate collinearity issues (Montgomery & Peck, 1992). Following Zuur et al. (2010), I have used a more stringent cut-off of 3 or 4 in past studies. However, there are also researchers who warn against using variance inflation factors to make decisions about which predictors to include, an issue to which we return below (O'brien, 2007; Morrissey & Ruxton, 2018). [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=131|page 114]]

> The `vif()` function from the car package (Fox & Weisberg, 2011) can be used to compute variance inflation factors. For `xmdl_both`, the variance inflation factors are very high, certainly much in excess of l 0, thus indicating strong collinearity [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=131|page 114]]

```mochi
What do *variance inflation factors* measure?
---
They measure the degree to which one predictor can be accounted for by the other predictors.
```

```mochi
How do you compute variance inflation factors for a model `m` in R?
---
vif(m)
```

```mochi
How should you interpret a variance inflation factor value?
---
Values lower than 3 are ideal.
Values lower than 10 are commonly considered okay.
Values higher than 10 are commonly considered collinear.
```

```d2
direction: down

do_clean: Clean the data
do_explore: Explore the data for relationships
q_relationship: Are there interesting relationships?
q_linear: Is the relationship linear?
do_standardize: Standardize the distributions
do_transform: Use a non-linear transformation to make them linear
do_model: Build a linear regression model
do_vif: Check variance inflation factors
q_vif_high: Is the VIF high?
do_report: Write up the report

do_clean -> do_explore: then
do_explore -> q_relationship: ask

q_relationship -> do_explore: No

q_relationship -> q_linear: Yes
q_linear -> do_standardize: Yes
q_linear -> do_transform: No

do_transform -> do_standardize: then
do_standardize -> do_model: then
do_model -> do_vif: thenp
do_vif -> q_vif_high: ask
q_vif_high -> do_explore: Yes
q_vif_high -> do_report: No
```

> It is important to mention that sample size interacts with collinearity. All else being equal,  more data means that regression coefficients can be estimated more precisely (O'brien, 2007; Morrissey & Ruxton, 2018). So, rather than excluding variables from a study, you could also collect more data so that coefficients can be measured precisely even in the presence of collinearity. It is also important to emphasize that collinearity should not be treated as a fault of multiple regression. It simply points to situations where the direct effects are difficult to measure when the predictors are quite entangled. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=132|page 115]]

> It is best to think about collinearity during the planning phase of your study. For example, if there are three highly correlated measures of speech rate (such as 'sentences by second', 'words by second', and 'syllables by second'), you could probably make a theoretically motivated choice about which one is the most appropriate predictor. Including them all into the same model would presumably not advance your theory anyway, and it will make interpreting your model harder. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=132|page 115]]

> Now that we know more about multiple regression, we are in a position to talk about 'adjusted $R^2$ ' which you have already seen in various model summaries in previous chapters. Just like $R^2$ , adjusted $R^2$ measures how much the predictors of a model describe the variance of the response. However, adjusted $R^2$ is more conservative; it will always be lower than $R^2$, because it includes a penalizing term that lowers $R^2$ depending on how many predictors are included in a model. This is done to counteract the fact that adding more predictors to a model always leads to an increased opportunity to capture more variance in the response. Thus, adjusted $R^2$ is there to counteract an unjust inflation of $R^2$ due to including too many predictors. This helps to diagnose and prevent 'overfitting', which describes situations when models correspond too closely to the idiosyncratic patterns of particular datasets. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=132|page 115]]

```mochi
What is adjusted $R^2$
---
It lowers $R^2$ based on how many predictors are in a model.
```

```mochi
Why should we use adjusted $R^2$
---
because adding additional predictors always leads to capturing more variance regardless of any actual relatioship 

In other words, it helps prevent overfitting.
```

> The model summary output generated by the broom function `glance()` shows that $R^2$ and adjusted $R^2$ correspond very closely to each other in the iconicity model described above. This suggests that there is no problem with overfitting. The presence of junk predictors would be indicated by an adjusted $R^2$ value that is much lower than the corresponding $R^2$ value. [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=132|page 115--116]]

```mochi
What can the $R^2$ and adjusted $R^2$ tell us about the usefulness of predictors in a model?
---
If the adjusted $R^2$ is much lower than $R^2$, then the presence of useless predictors is indicated.
```

> The formula is $R^2_{adj} = 1 - {(1 - R^2)(N - 1) \over N - k - 1}$. As you can see, adjusted $R^2$ is a transformation of $R^2$. Crucially, the formula contains a term for the number of parameters in a model, $k$. $N$ represents the number of data points.

```mochi
What is the formula for adjusted $R^2$?
---
$$R^2_{adj} = 1 - {(1 - R^2)(N - 1) \over N - k - 1}$$
```

When reporting distribution averages, include the mean and standard deviation. For example,

> The average context valence of taste words was higher (*M* = 5.81, *SD* = 0.30) than the average context valence of smell words (M= 5.47, SD= 0.34).
> 
> [[Resources/Articles/2020 Winter - Statistics for Linguists.pdf#page=137|page 120]]

```mochi
What should you use to be able to have categorical predictors?
---
treatment coding
```

```mochi
What is treatment coding?
---
It is a method of transforming discrete or categorical variables into a series of binary numeric variables. 
```

```mochi
How does treatment coding work for categories?
---
It uses the first category as a reference. For each subsequent category, a new (dummy) variable is created and is given a value of 0 or 1 if it has that category.
```

```mochi
What is sum-coding?
---
It assigns a reference category to the value of -1 and the treatment category a value of +1
```

```mochi
How can you check the coding scheme used in a linear model `m` in R?
---
contrasts(m)
```

Plotting fitted values against residuals in a model that uses categorical predictors will look a bit different. There will be a discrete column of points for each category. As long as the points as relatively equally distributed along the y-axis, it is homoscedastic.

```mochi
Which coding scheme is more useful for ordered categories?
---
Helmert coding or forward difference coding
```

Continue reading [[2020 Winter - Statistics for Linguists.pdf#page=150]]
