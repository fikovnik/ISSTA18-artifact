library(testthat)

.Random.seed <<- .ext.seed

test_that("[[<-.blob", {
    expect_equal(blob:::`[[<-.blob`(x = `*tmp*`, i = 1, value = as.raw(0)), structure(list(as.raw(0), as.raw(2), as.raw(3), 
        as.raw(4)), class = "blob"))
})
