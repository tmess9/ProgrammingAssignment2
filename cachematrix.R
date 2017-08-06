## Put comments here that give an overall description of what your
## functions do

## Creates the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list(
		set = set,
		get = get,
		setinverse = setinverse,
		getinverse = getinverse)

}


## Returns the matrix that is the inverse of the cached matrix above

cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
}
