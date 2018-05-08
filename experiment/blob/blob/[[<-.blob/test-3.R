library(testthat)

.Random.seed <<- .ext.seed

test_that("[[<-.blob", {
    expect_equal(blob:::`[[<-.blob`(x = `*tmp*`, i = 3, value = NULL), structure(list(as.raw(0), as.raw(0), NULL, as.raw(4)), 
        class = "blob"))
})
