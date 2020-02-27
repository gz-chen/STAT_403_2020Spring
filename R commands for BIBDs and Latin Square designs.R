##### Data Analysis for Latin Square Design

y_ls <- c(23, 34, 20, 56, 33, 17, 34, 30, 18, 46, 22, 45 , 37, 21, 40, 22)
# enter your observation as a vector

days <- rep(1:4, 4) # levels of row (days) block factor corresponding to observations
days <- as.factor(days) 
times <- rep(1:4, each = 4) # levels of column (times) block factor corresponding to observations
times <- as.factor(times)
trt_ls <- c(1,2,3,4,2,3,4,1,3,4,1,2,4,1,2,3) # levels of treatment (manufacturing processes)
trt_ls <- as.factor(trt_ls)

# two ways to generate the ANOVA table
anova(lm(y_ls ~ trt_ls + times + days))
aov(y_ls ~ trt_ls + times + days)


##########################################################################################


##### Data Analysis for BIBD

y_ibd <- c(32, 27, 41, 40, 47, 40, 66, 70, 22, 27, 30, 33, 50, 45, 50, 48, 40, 52, 70, 63) # observations
trt_ibd <- factor(c(1, 2, 3, 4, 1, 2, 3, 5, 1, 2, 4, 5, 1, 3, 4, 5, 2, 3, 4, 5)) # treatment assigned to each observation
blk_ibd <- factor(rep(1:5, each=4)) # blocks each obs. belongs to

# two ways to generate the ANOVA table
anova(lm(y_ibd ~ blk_ibd + trt_ibd))
aov(y_ibd ~ blk_ibd + trt_ibd)



##### generate a BIBD with given parameters
library(ibd)
bibd(v = 5, b = 5, r = 4, k = 4, lambda = 3) 
