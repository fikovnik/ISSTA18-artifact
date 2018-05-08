library(testthat)

.Random.seed <<- .ext.seed

test_that(".checkDataType", {
    e2 <- as.raw(c(1, 2, 3))
    expect_equal(SoDA:::.checkDataType(x = e2), "raw")
})
