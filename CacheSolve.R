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