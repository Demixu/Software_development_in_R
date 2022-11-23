### this script is used for practicing R programming skill 
### via cousera course offered by JHU named "mastering software development in R"
### create R objects and how to transform one format to another
library(swirl)
library(tidyverse)
install_course("The R Programming Environment")
## How to exit swirl page
## either type "bye()" or press the Esc key
## type main() to return to swirl's main menu
## type info() to look at options
1/inf
x <- c(0.5, 0.6)       ## numeric
x <- c(TRUE, FALSE)    ## logical
x <- c(T, F)           ## logical
x <- c("a", "b", "c")  ## character
x <- 9:29              ## integer
x <- c(1+0i, 2+4i)     ## complex
x <- vector("numeric", length = 10) 

x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
m <- matrix(nrow = 2, ncol = 3) 
m
dim(m)
attributes(m)
m <- matrix(1:6, nrow = 2, ncol = 3) 
x <- 1:3
y <- 10:12
cbind(x, y)
x  y
[1,] 1 10
[2,] 2 11
[3,] 3 12
rbind(x, y) 
vector("list",length = 5)

x <- factor(c("yes", "yes", "no", "yes", "no")) 
x

table(x) 

## See the underlying representation of factor
unclass(x)  
[1] 2 2 1 2 1
attr(x,"levels")


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
attributes(x) ## look at the characteristics of the target R objects