## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## First I created an empty matrix called inv and set the value to
## NULL. Then I get the value of the matrix and set it to the inverse. 

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL 				
        set <- function(y) {			
                x <<- y				
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function
## This set of functions checks to see whether inverse has been filled in.
## If it has, it simply returns the inverse and stops. If it hasn't,
## it calculates the inverse of matrix x. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <- x$getInverse()
	        if(!is.null(inv)) {
	                message("getting cached inverse")
	                return(inv)
	        }
	        data <- x$get()
	        inv <- solve(mat, ...)
	        x$setInverse(inv)
        	inv
}
