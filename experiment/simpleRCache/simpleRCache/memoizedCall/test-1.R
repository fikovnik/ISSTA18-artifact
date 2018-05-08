library(testthat)

.Random.seed <<- .ext.seed

test_that("memoizedCall", {
    expect_equal(simpleRCache:::memoizedCall(fcn = genthat::with_env(function(n) {
        if (length(n) > 1) {
            return(sapply(n, fib))
        }
        if (n == 0) 
            return(0)
        if (n == 1) 
            return(1)
        if (round(n, 0) != n) 
            return(NA)
        if (n < 0) 
            return(fib(-1 * n) * ((-1)^((n + 1)%%2)))
        return(fib(n - 1) + fib(n - 2))
    }, env = list2env(list(fib = genthat::with_env(function(n) {
        if (length(n) > 1) {
            return(sapply(n, fib))
        }
        if (n == 0) return(0)
        if (n == 1) return(1)
        if (round(n, 0) != n) return(NA)
        if (n < 0) return(fib(-1 * n) * ((-1)^((n + 1)%%2)))
        return(fib(n - 1) + fib(n - 2))
    }, env = list2env(list(), parent = emptyenv()))), parent = baseenv())), -25:25), c(75025, -46368, 28657, -17711, 10946, 
        -6765, 4181, -2584, 1597, -987, 610, -377, 233, -144, 89, -55, 34, -21, 13, -8, 5, -3, 2, -1, 1, 0, 1, 1, 2, 3, 5, 
        8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025))
})
