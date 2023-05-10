library(mixtools)

# Define the mixture components
num_components <- 10
means <- rnorm(num_components, mean = 0, sd = 1)
variances <- rep(0.1, num_components)

# Define the mixing proportions
proportions <- rep(1/num_components, num_components)

# Generate a sample of size 1000 from the mixture distribution
sample <- rmixGaussian(n = 1000, lambda = proportions, mu = means, sigma = variances)

# Plot the sample as a histogram
hist(sample, breaks = 50, col = "blue", xlab = "Value", main = "Mixture of 10 Gaussian Distributions")
