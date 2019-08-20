## Manage efficiently the retrievement of the inverse of a matrix saving the
## access to its value

## Create a "special" matrix
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        setmat <- function(y) {
          x <<- y
          i <<- NULL
        }
        getmat <- function() x
        setinv <- function(inv) i <<- inv
        getinv <- function() i
        list(set = setmat, get = getmat,
             setinv = setinv,
             getinv = getinv)
}


## Get the previously computed inverse of a "special" matrix, or compute it
## the first time
cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
          print("Getting cached inverse")
        } else {
          mat <- x$get()
          inv <- solve(mat)
          x$setinv(inv)
        }
        inv
}
