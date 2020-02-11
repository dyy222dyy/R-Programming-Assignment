## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Set the value of the matrix
makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    set <- function(y) {
        x <<- y
        inver <<- NULL
    }
    
## Get the value of the matric
     get <- function() x

## Set the value of the inverse
     setinverse <- function(inverse) inver <<- inverse

## Get the value of the inverse
     getinverse <- function() inver

list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inver <- x$getinverse()
    if (!is.null(inver)) {
        message("getting cached data")
        return(inver)
    }
    data <- x$get()
    inver <- solve(data, ...)
    x$setinverse(inver)
    inver
}