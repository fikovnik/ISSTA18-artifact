library(testthat)

.Random.seed <<- .ext.seed

test_that("call.MGRAST", {
    expect_equal(MGRASTer:::call.MGRAST(resource = "m5", request = "so", issue = FALSE), "http://api.metagenomics.anl.gov/1/m5nr/sources")
})
