## Manage efficiently the retrievement of the inverse of a matrix saving the
## access to its value

## Create a "special" matrix
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
          x <- y
          i <<- NULL
        }
        get <- function() x
        setinv <- function(inv) i <<- inv
        getinv <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Get the previously computed inverse of a "special" matrix, or compute it
## the first time
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
