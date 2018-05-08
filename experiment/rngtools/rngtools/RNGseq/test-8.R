library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGseq", {
    n <- 1
    expect_equal(rngtools:::RNGseq(n = n), c(507L, -1501192801L, -1080079532L, -726231483L, 840750658L, 1849355483L, 806472288L))
})
