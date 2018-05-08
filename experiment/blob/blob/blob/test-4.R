library(testthat)

.Random.seed <<- .ext.seed

test_that("blob", {
    expect_equal(blob:::blob(raw(7)), structure(list(as.raw(c(0, 0, 0, 0, 0, 0, 0))), class = "blob"))
})
