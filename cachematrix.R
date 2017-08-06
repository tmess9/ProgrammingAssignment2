## Put comments here that give an overall description of what your
## functions do

## Creates a special "matrix" object that will cache it's inverse.
# As a result it will create  a list containing a function to
# 1) set the value of the matrix
# 2) get the value of the matrix
# 3) set the value of inverse of the matrix
# 4) get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(solve) inverse <<- solve
	getinverse <- function() inverse
	list(
		set = set,
		get = get,
		setinverse = setinverse,
		getinverse = getinverse)

}


## Returns the matrix that is the inverse of the cached matrix above

cacheSolve <- function(x, ...) {
	inverse <- x$getinverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(inverse)
	}
	data <- x$get()
	inverse <- solve(data, ...)
	x$setinverse(inverse)
	inverse
}
