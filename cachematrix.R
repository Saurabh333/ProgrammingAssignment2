## This function calculates the mean of the matrix and if the inverse has already been calculated then it gets
## inverse from cache an dskips computation.

## This function is used to 
## 1 Set the value of matrix
## 2 Get the value of matrix
## 3 Set the value of inverse
## 4 Get the value of inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
print(parent.env(evn))
set <- function(y) {
x <<- y
m <<- NULL

}
setsolve <- function(solve) m <<- solve   ## This function sets the inverted matrix
getsolve <- function() m
##getevn<- function() environment()
list(set = set, get = get,
     setsolve = setsolve,
     getsolve = getsolve)## This function fetches the inverted matrix
    
}


## # used to get the cache of the matrix

cacheSolve <- function(x=matrix(),..) {
  x<-matrix()
  m<-x$getsolve()
  if(!is.null(m)){   ## If there is data (matrix)
    if(x$setmatrix()==x$getmatrix()){
    message("Getting cached data")   ## If condition is true
    return(m)
  }
  }
  #if the inverse if not there, first it is calculated and then retrieved.
  y<-x$get()  ## If the condition is False 
  m<-solve(x,..)  ## This calculates the inverse of matrix
  x$setsolve(m)  
  m
  }
