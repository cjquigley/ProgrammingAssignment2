## Functions calculate and store inverse of a matrix and check to see if the inverse has been calculated before.

## A set of functions that stores a matrix, changes a matrix, gets the inverse and sets the inverse of the function. 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <-function(inverse) i <<- inverse
        getInverse <-function() i
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Returns the inverse of a matrix. First Looks to see if it has been calculated, and if it hasn't calculates it. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        if(!is.null(i)) {
                message("getting cached data...")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setInverse(i)
        i
}
