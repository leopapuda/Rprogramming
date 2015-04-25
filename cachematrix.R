## R PROGRAMMING - ASSIGNMENT 2
## Function created to cache the inverse of a matrix


## Function to create an object that caches the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) 
{
    m <- NULL ## variable to carry the inverse of a matrix
    
    ## set the matrix and clean its inverse
    set <- function(y)
    {
        x <<- y
        m <<- NULL
    }
    
    ## get the matrix
    get <- function()
    {
        x
    }
    
    ## cache the inverse of a matrix
    setInverse <- function(inverse)
    {
        m <<- inverse
    }
    
    ## get the cached inverse of a matrix
    getInverse <- function()
    {
        m
    }
    
    list(set = set, 
         get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)

}


## Function that calculates the inverse of a matrix

cacheSolve <- function(x, ...) 
{
    m <- x$getInverse()
    
     ##check if there is any inverse
    if(!is.null(m))
    {
        message("getting inverse")
        return(m)
    }
    
    data <- x$get()
    m <- solve(data,...) ## calculates the inverse of a matrix
    x$setInverse(m) ## cache the inverse putting it inside the object
    m
}


