library(testthat)

.Random.seed <<- .ext.seed

test_that("strapply", {
    s <- c("a:b c:d", "e:f")
    list <- gsubfn::list
    expect_equal(gsubfn:::strapply(X = s, pattern = "(.):(.)", FUN = c, combine = list), list(list(c("a", "b"), c("c", "d")), 
        list(c("e", "f"))))
})
