library(testthat)

.Random.seed <<- .ext.seed

test_that("call.MGRAST", {
    expect_equal(MGRASTer:::call.MGRAST(resource = "downloa", request = "setl", id = 5, issue = FALSE), "http://api.metagenomics.anl.gov/1/download/mgm5")
})
