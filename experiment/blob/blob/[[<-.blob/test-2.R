library(testthat)

.Random.seed <<- .ext.seed

test_that("[[<-.blob", {
    expect_equal(blob:::`[[<-.blob`(x = `*tmp*`, i = 1, value = 1), list("RHS must be raw vector or NULL", NULL, genthat::with_env(function(e) e, 
        env = list2env(list(), parent = baseenv()))))
})
