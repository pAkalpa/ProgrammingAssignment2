"
makeCacheMatrix: This creates a matrix object that cache the inverse matrix
"
makeCacheMatrix <- function(x = matrix()) {

        ## Declare NULL matrix
        inv <- NULL

        ## Assign y to x and NULL to inv
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }

        ## Returns matrix
        get <- function() x

        ## Set the inverse attribute of the vector to the value
        setinv <- function(i) inv <<- i

        ## Returns the value of the inverse
        getinv <- function() inv

        ## Chache inverse matrix
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}

"
cacheSolve: This computes inverse of the matrix returned by makeCacheMatrix.
"
cacheSolve <- function(x, ...) {
        ## Get the inverse from the matrix x
        inv <- x$getinv()

        ## Return the inverse if the inverse is not NULL
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }

        ## get matrix x
        data <- x$get()

        ## Compute the inverse and set the cache
        inv <- solve(data, ...)
        x@setinv(inv)

        ## Return the inverse
        inv
}
