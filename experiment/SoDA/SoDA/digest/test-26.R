library(testthat)

.Random.seed <<- .ext.seed

test_that("digest", {
    fname <- "/usr/local/lib/R/COPYING"
    expect_equal(SoDA:::digest(object = fname, algo = "md5", file = TRUE), "eb723b61539feef013de476e68b5c50a")
})
