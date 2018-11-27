## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        temp <- NULL
        set <- function(y) {
                x <<- y
                temp <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) temp <<- inverse
        getInverse <- function() temp
        list(set = set, get = get,
             setInverse = setInverse,
             setInverse = setInverse)
}


## Write a short comment describing this function

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
