## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inver<- NULL
        set<- function(y) {
                x<<- y
                inv<<- NULL
        }
        get<- function() x
        setInverse<- function(inverse) inver<<-inverse
        getInverse<- function() inver
        list(set= set,get= get,setInverse= setInverse,getInverse= getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        ma <- x$get()
        inv <- solve(ma, ...)
        x$setInverse(inv)
        inv
}
