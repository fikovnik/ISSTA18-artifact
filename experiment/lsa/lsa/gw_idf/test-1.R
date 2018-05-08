library(testthat)

.Random.seed <<- .ext.seed

test_that("gw_idf", {
    matrix <- structure(c(1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 
        0, 0, 0, 0), .Dim = c(12L, 3L), .Dimnames = list(NULL, c("vec1", "vec2", "vec3")))
    expect_equal(lsa:::gw_idf(m = matrix), c(2.58496250072116, 1.58496250072116, 1.58496250072116, 1.58496250072116, 1.58496250072116, 
        2.58496250072116, 2.58496250072116, 2.58496250072116, 2.58496250072116, Inf, Inf, Inf))
})
