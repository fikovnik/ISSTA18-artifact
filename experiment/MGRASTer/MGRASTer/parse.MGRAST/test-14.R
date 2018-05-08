library(testthat)

.Random.seed <<- .ext.seed

test_that("parse.MGRAST", {
    xx <- "http://api.metagenomics.anl.gov/sample?limit=20&order=name"
    expect_equal(MGRASTer:::parse.MGRAST(call.url = xx), list(resource = "sample", request = "query", limit = "20", order = "name"))
})
