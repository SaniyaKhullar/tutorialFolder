#!/usr/bin/env Rscript

# Please note that this is some dummy R code to run on the server
# By: Saniya Khullar
print(":) Hi there! This is some dummy code that we run on the server in R")
print(":) it is really important that the 1st line of the R script is: #!/usr/bin/env Rscript")

library(stringr)
sampleVector <- c(1, 2, 4, "random vector", "by Saniya :)")
print(sampleVector)

sampleVector <- str_replace_all(sampleVector, "an", "UN")
print(sampleVector)


set.seed(605)
numRandomNumbers = 100000000
print(paste0(":) please note we will generate ", numRandomNumbers, " random numbers"))
randomNumbersVec <- runif(numRandomNumbers)
randomNumbersVec

print(paste0(":) my working directory in R is: ", getwd()))
outputPath = "randomNumbers.RData"
save(randomNumbersVec, file = outputPath)
print(paste0(":) Please note that we saved our random numbers RData here: ", outputPath))

