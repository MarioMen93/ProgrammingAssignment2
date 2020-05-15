## Put comments here that give an overall description of what your
## functions do:
## This function calculates the Inverse of a Matrix, storing the result on the
## cache, so you can know if the operation has been already made, or to reprint
## the result



## Write a short comment describing this function:

## This function creates a list with functions, so you can have a kind of menu to call with
## makeCacheMatrix, assigning that function to a variable: "set, get, setInverse,
## getInverse). 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() 
    x
  setInverse <- function(solve) 
    m <<- solve
  getInverse <- function() 
    m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

## This function makes the Inverse of the matrix that was set on the other
## function 

cacheSolve <- function(x, ...) {
        
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
