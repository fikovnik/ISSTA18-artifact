library(testthat)

.Random.seed <<- .ext.seed

test_that("treeClust.control", {
    expect_equal(treeClust:::treeClust.control(), list(return.trees = FALSE, return.mat = TRUE, return.dists = FALSE, cluster.only = FALSE, 
        return.newdata = FALSE, serule = 0, DevRatThreshold = 1, parallelnodes = 1))
})
