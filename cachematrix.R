# makeCacheMatrix can cache the inverse of matrix
# cacheSolve computes the inverse of matrix returned by makeCacheMatrix. If the inverse has already been calculated,then
# the cacheSolve should retrieve the inverse from the cache

#function to cache the inverse
makeCacheMatrix <- function(a = matrix()) {
        i <- NULL
	set <- function(b){
		a <<- b
		i <<- NULL
        }
        get <- funtion () a
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
                
#function to find inverse
cacheSolve <- function(a, ...) {
        i <- a$getinverse()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	data <- a$get()
	i <- solve(data,...)
	a$setinverse(i)
	i
        ## Return a matrix that is the inverse of 'a'
}
