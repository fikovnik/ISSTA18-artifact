library(testthat)

.Random.seed <<- .ext.seed

test_that("parse.MGRAST", {
    xx <- "http://api.metagenomics.anl.gov/m5nr/sources"
    expect_equal(MGRASTer:::parse.MGRAST(call.url = xx), list(resource = "m5nr", request = "sources"))
})
