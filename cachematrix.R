## This is the programming Assignment 2. Two functions will be created
## for this assignment. 

## The function makeCacheMatrix creates a special "matrix" that can 
## cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  ## Method to set the matrix
  set <- function(matrix) {
    x <<- matrix
    m <<- NULL
  }
  
  ## Method to get the matrix
  get <- function() {
    ## Return the matrix
    x
  }
  
  ## Method to set the inverse
  setInverse <- function(inverse) {
    m <<- inverse
  }
  
  ## Method to get the inverse
  getInverse <- function() {
    ## return the inverse
    m
  }
  
  list(set=set, get=get, setInverse = setInverse, getInverse = getInverse)
}

## The function CacheSolve computes the inverse of the special "matrix"
## returned by makeCacheMatrix. If the inverse has already been 
## calculated, then cacheSolve should retrieve the inverse from the cache
## and not do the computation again. 

cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  
  ## Check if inverse is already set and return inverse from cache
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
    
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  ## Return a matrix that is the inverse of 'x'
  m
  
}