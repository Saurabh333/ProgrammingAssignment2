## This function calculates the mean of the matrix and if the inverse has already been calculated then it gets
## inverse from cache an dskips computation.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  print(environment())
  evn <- environment()
  print(parent.env(evn))
  set <- function(y) {
    x <<- y
    m <<- NULL

}
setsolve <- function(solve) m <<- solve
getsolve <- function() m
getevn<- function() environment()
list(set = set, get = get,
     setsolve = setsolve,
     getsolve = getsolve,
     getevn = getevn)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
  m<-x$getsolve()
  if(!is.null(m)){
    message("Getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data)
  x$setsolve(m)
  m
  }   
