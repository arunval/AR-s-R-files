## creating an object that takes MakeCacheMatrix as an arguement and returns inverse from cache if null or compute using solve
CacheSolve <- function(x,...){
    I <- x$getinv()
    if(!is.null(I)){
        message("getting cache data")
        return(I)
    }
    data <- x$get()
    I <- solve(data,...)
    x$setinv(I)
    return(I)
}
