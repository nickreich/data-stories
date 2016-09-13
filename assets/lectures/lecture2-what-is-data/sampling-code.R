## code to accompany lecture 2


## sampling from a small population
groupA <- c("A", "A", "A", "A", "A", "A", "A")
groupB <- c("B", "B", "B")
population <- c(groupA, groupB)
sample(population, size = 5, replace=FALSE)


## sampling from a larger population
groupA <- rep("A", 1000)
groupB <- rep("B", 500)
population <- c(groupA, groupB)
sample1 <- sample(population, size = 100, replace=FALSE)
table(sample1)


## large population, with a biased sample
weights <- c(rep(1,1000), rep(3, 500))
sample2 <- sample(population, size = 100, prob=weights, replace=FALSE)
table(sample2)
