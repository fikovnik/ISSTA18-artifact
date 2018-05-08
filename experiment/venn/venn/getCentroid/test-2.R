library(testthat)

.Random.seed <<- .ext.seed

test_that("getCentroid", {
    getZones <- venn::getZones
    expect_equal(venn:::getCentroid(data = getZones("0110")), list(c(500.80822158837, 656.762615568727)))
})
