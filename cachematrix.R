## [Put comments here that describe what your functions do]
#makeCacheMatrix creates a specail matrix vector, which is a list containing funtion to
# 1. set the value of matrix 2. get the value of matrix, 3.set the inverse of matrix (solve) 
# and 4. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}

#cacheSolve returns a matrix that is inverse of the given matrix...if the matrix has already been 
# cached,it returns the cahed value
cacheSolve <- function(x=matrix(), ...) {
  m <- x$getmatrix()
  if (!is.null(m)) {
    message("Getting Cached Matrix")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
  ## Return a matrix that is the inverse of 'x'
}
