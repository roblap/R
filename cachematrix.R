## a pair of functions that cache the inverse of a matrix


## create a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = numeric()) {

	## initialize the matrx inverse to NULL
        inverse <- NULL

	## function that cashes the matrix and its inverse
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }

        get <- function() x

        setinv <- function(solve) inverse <<- solve

        getinv <- function() inverse

        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv )
}


## compute the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
	## return a matrix that is the inverse of 'x'

   	## retrieve cashed inverse if exists
	inverse <- x$getinv()

        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
