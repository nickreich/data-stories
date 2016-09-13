## code to accompany lecture 2


## sampling from a small population
groupA <- c("A", "A", "A", "A", "A", "A", "A")
groupB <- c("B", "B", "B")
population <- c(groupA, groupB)
sample(population, size = 5, replace=FALSE)
sample(population, size = 5, replace=TRUE)


## repeated sampling from a small population
library(mosaic)
library(ggplot2)
fish_keepers <- do(1000) * sample(population, size = 5, replace=FALSE)
B_fish_caught <- rowSums(fish_keepers=="B")
qplot(B_fish_caught, geom="histogram")
mean(B_fish_caught)/5

fish_replaced <- do(1000) * sample(population, size = 5, replace=TRUE)
B_fish_caught <- rowSums(fish_replaced=="B")
qplot(B_fish_caught, geom="histogram")
mean(B_fish_caught)/5


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


## isenberg scruffy simulation
n_isen <- 1000
n_isb <- 1000
isen_scruffy <- .5
isb_scruffy <- .3

loc <- c(rep("isen", n_isen), rep("isb", n_isb))
scruff <- c(rep(1, n_isen*isen_scruffy), 
            rep(0, n_isen*(1-isen_scruffy)),
            rep(1, n_isb*isb_scruffy), 
            rep(0, n_isb*(1-isb_scruffy)))
population <- cbind(loc, scruff)

a <- mosaic::sample(population, 50)
