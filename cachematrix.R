"
makeCacheMatrix(): This creates a matrix object that cache the inverse matrix
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
