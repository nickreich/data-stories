
n <- 100

mean_x <- 100
sd_x <- 1
x1 <- rnorm(n, mean = mean_x, sd=sd_x)
beta0 <- 10
beta1 <- 0.1
sigma <- .01
y <- beta0 + beta1*x1 + rnorm(n, mean = 0, sd=sigma)

plot(x1, y)

confint(lm(y~x1))

## what is the variance of y? it depends on beta1, x1, sigma
var(y)

## this is the formula for beta1
var(y)/var(x1) * (cor(x1,y))^2
