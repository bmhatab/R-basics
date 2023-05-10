install.packages("mvtnorm")

library(mvtnorm)

# Set means and variances for X and Y
mu_x <- 2
mu_y <- -1
var_x <- 4
var_y <- 9

# Set covariance matrix
cov_mat <- diag(2)

# Generate 1000 random samples from the bivariate Gaussian distribution
samples <- rmvnorm(n = 1000, mean = c(mu_x, mu_y), sigma = cov_mat %*% diag(c(var_x, var_y)))

# Plot the samples as a scatterplot
plot(samples, pch = 20, col = "blue", xlab = "X", ylab = "Y")
