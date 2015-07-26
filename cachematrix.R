## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {


#### Initialisation

       inversematrix <- NULL

#### Function to set the value of the matrix

       set <- function(y) {

               x <<- y

               inversematrix <<- NULL

       }

#### Function to get the value matrix

       get <- function() x

#### Function to set  the inverse of the matrix

       setinverse <- function(inv) inversematrix <<- inv

#### Function to get the inverse of the matrix

       getinverse <- function() inversematrix

#### Output 

       list(set = set, get = get,

               setinverse = setinverse,

               getinverse = getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

#### Getting the inverse matrix

       inversematrix <- x$getinverse()

#### Function to get the value matrix

       if(!is.null(inversematrix)) {

              message("getting cached data")

              return(inversematrix)

       }

#### Compute the inverse matrix if not calculated before

       data <- x$get()

       inversematrix <- solve(data)

       x$setinverse(inversematrix)

#### Result

       inversematrix

}
