### this script is used for practicing R programming skill 
### via cousera course offered by JHU named "mastering software development in R"

### Part 1 - start from swirl package############################################################################
install.packages("swirl")
packageVersion("swirl") ## Check the package version
library(swirl)
library(dplyr)
install_course("The R Programming Environment") ## load the course

#### set names for R objects

##### for vector
x <- 1:3
names(x)
names(x) <- c("New York", "Seattle", "Los Angeles") 
names(x)

##### for matrix(both row names and column names can be given)
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))  # the first dim refers to column names and the second dim refers to row names
m

##### for lists

x <- list("Los Angeles" = 1, Boston = 2, London = 3) 
x
names(x)
attributes(x) 