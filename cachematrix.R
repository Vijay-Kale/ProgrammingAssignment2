## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# function makeCacheMatrix has functions to set matrix, get matrix and cache the inverse of matrix.
# It returns a list with functions to set , get and cache inverse of matrix.

makeCacheMatrix <- function(x = matrix()) {

        matrix_cache <- NULL
        setMatrix <- function(newValue) {
                x <<- newValue
                # since the matrix is assigned a new value, flush the cache
                matrix_cache <<- NULL
        }

        getMatrix <- function() {
                x
        }

        cacheInverse <- function(solve) {
                matrix_cache <<- solve
        }

        getInverse <- function() {
                matrix_cache
        }
        
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function
# The following function calculates the inverse of a "special" matrix created with 
# makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- y$getInverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)        
        inverse
}
