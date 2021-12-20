## This second programming assignment will require you to write an R function that 
## is able to cache potentially time-consuming computations.
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # Set the value of the matrix
  
  m <- NULL
  
  set <- function(y){
    
    x <<- y
    m <<- NULL
  }
  
  # Get the value of the matrix
  
  get <- function(){
    x
  }
  
  # Set the inverse of the matrix
  
  setinverse <- function(solve){
    m <<- solve
  }
  
  # Get the inverse of the matrix
  
  getinverse <- function(){
    m
  }
  
  list(set = set, 
       get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}