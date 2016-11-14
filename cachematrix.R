## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {    # Create a special matrix that can cach its inverse
  mat_inv <- NULL							                 # First empty the cach
  set <- function(y) {							           # set the value
    x <<- y
    mat_inv <<- NULL
  }
  get <- function() x							                                      # get the value
  setinverse <- function(inverse) mat_inv <<- inverse			              # set the inverse value
  getinverse <- function() mat_inv					                            # get the inverse value
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)	# return it as a list
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {      # Define a function to calculate the inverse of the matrix
  mat_inv <- x$getinverse()		        # If the inverse is already calculated assign it to mat_inv
  if(!is.null(mat_inv)) {		          # Then return a message and the calculated value
    message("getting cached data.")	
    return(mat_inv)			
  }
  data <- x$get()			                # Otherwise get the matrix
  mat_inv <- solve(data) 		          # and calculate the inverse
  x$setinverse(mat_inv)		            # assign it to the setinverse of the makeCasheMatrix
  mat_inv				                      # return the invers
        ## Return a matrix that is the inverse of 'x'
}
