library(testthat)

.Random.seed <<- .ext.seed

test_that("omp_set_num_threads", {
    expect_equal(OpenMPController:::omp_set_num_threads(n = 2), list(2L))
})
