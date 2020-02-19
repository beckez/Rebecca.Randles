## The assignment brief specifies to write a pair of functions. More specifically
## "makeCacheMatrix" and "cacheSolve" to compute the inverse of a square matrix

## This function intends to create a super matrix that can store it's cotent and the inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function (y){
	x <<-y
	inv <<- NULL
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse()
	if(!is.null(inv)){
	message("getting cached data")
	return(inv)
	}
	mat <- x$get()
	inv <- solve (mat,...)
	x$setinverse(inv)
	inv
}
