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

cacheSolve <- function(x, ...) {
  
        
        ## Return a matrix that is the inverse of 'x'
}
