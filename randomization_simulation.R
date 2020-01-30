set.seed(100) 
# set random seed so that the results are reproducible

y <- c(11, 12, 16, 13, 9, 14) # sample

id_A <- c(1, 4, 5) # index of the sample assigned treatment A
id_B <- c(2, 3, 6) # index of the sample assigned treatment B

D_obs <- mean(y[id_B]) - mean(y[id_A]) # observed D value

count <- 0 # counter of the event D > D_obs
B <- 1000 # number of repetitions

for (i in 1:B){
  id_a <- sample(6, 3) # randomly select 3 units to assign treatment A; and the rest are assigned B
  D <- mean(y[-id_a]) - mean(y[id_a]) # calculate D value under this treatment assignment
  if (D > D_obs){
    count <- count + 1
  } else if (D == D_obs){
    count <- count + 1/2
  }
}

est_pval <- count/B # use frequency to estimate the probability
est_pval



