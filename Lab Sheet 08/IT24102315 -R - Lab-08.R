setwd("E:\\Lab 08-20250926")

# 2. Load the dataset
data <- read.csv("Exercise - LaptopsWeights.txt")


fix(data)

attach(data)



# Question 1:

# Population mean of bag weights
pop_mean <- mean(Weight.kg.)

# Population SD of bag weights
pop_sd <- sd(Weight.kg.) * sqrt((length(Weight.kg.) - 1) / length(Weight.kg.))

pop_mean
pop_sd


# Question 2:

set.seed(123)   # for reproducibility
sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  sample_data <- sample(Weight.kg., size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

sample_means
sample_sds


# Question 3:
# Mean & SD of the 25 sample means

mean_sample_means <- mean(sample_means)
sd_sample_means <- sd(sample_means)

mean_sample_means
sd_sample_means

# Relationship:
# - mean_sample_means ≈ pop_mean
# - sd_sample_means ≈ pop_sd / sqrt(6)
# -----------------------------
