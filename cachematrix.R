## Put comments here that give an overall description of what your
## functions do
## The function has been programmed to generate the inverse of any square matrix
## It has the ability to cache the certain key information for future reference
## The caching function will reduce the runtime after initial run

## Write a short comment describing this function
## This function creates a matrix object capable of caching its inverse
makeCacheMatrix <- function(x = matrix()) {
 inverse_m <- NULL
  set <- function(b) {
    a <<- b
    inverse_m <<- NULL
  }
  get <- function() a
  setinverse <- function(inverse) inverse_m <<- inverse
  getinverse <- function() inverse_m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function
## This function is designed to print the inverse matrix computed by the makeCacheMatrix.
## If there is no change after calculating the matrix & matrix also maintained, the casheSolve retrieve the
## the inverse from the cache
cacheSolve <- function(x, ...) {
  inverse_m <- a$getinverse()
  if(!is.null(inverse_m)) {
    message("getting cached data")
    return(inverse_m)
  }
  data <- a$get()
  inverse_m <- solve(data, ...)
  a$setinverse(inverse_m)
  inverse_m
        
}

## An example for confirmation of the functions!
a <- matrix(5:8, nrow = 2, ncol = 2)
b <- makeCacheMatrix(a)
d <- cacheSolve(b)
d
## matrix d printed out is the inverse of matrix a.
## The inverse matrix (d) is displayed below.

     [,1] [,2]
[1,]   -4  3.5
[2,]    3 -2.5
