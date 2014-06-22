## This function creates a matrix and calculates the inverse

## makeCacheMatrix creates a matrix and passes on the values

makeCacheMatrix <- function(x = matrix()) {
    x1 <- NULL
    set <- function(y) {
        x <<- y
        x1 <<- NULL }
    get <- function() {x}
    setinverse <- function(inverse) {x1 <<- inverse}
    getinverse <- function() {x1}
    list(set = set, get = get,
    setinverse = setinverse,
    getinverse = getinverse)
}

## cacheSolve returns the inversed matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    x1 <- x$getinverse()
    if (!is.null(x1)) {
        message("getting cached inverse matrix")
        return(x1)}
    else {
    x1 <- solve(x$get())
    x$setinverse(x1)
    return(x1)}
}