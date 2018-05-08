library(testthat)

.Random.seed <<- .ext.seed

test_that("digest", {
    expect_equal(SoDA:::digest(object = "abc", algo = "sha1", serialize = FALSE), "a9993e364706816aba3e25717850c26c9cd0d89d")
})
