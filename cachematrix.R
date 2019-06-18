## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL#Intialise as null
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)




}
## this will do the job

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m = x$getinverse()

if (!is.null(m)){
    message("getting cached data")
    print("data available in the cache:")
    return(m)
}

# otherwise, calculates the inverse
print("data no available in the cache, so it's been calculated:")
data = x$get()
m = solve(data, ...)

# sets the value of the inverse in the cache via the setinv function.
x$setinv(m)
m



}
