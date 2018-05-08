library(testthat)

.Random.seed <<- .ext.seed

test_that("scrubIDs", {
    X <- list(id = "5")
    i <- 1L
    expect_equal(MGRASTer:::scrubIDs(IDs = X[[i]], resources = "metagenome"), "mgm5")
})
