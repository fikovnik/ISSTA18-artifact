library(testthat)

.Random.seed <<- .ext.seed

test_that("call.MGRAST", {
    expect_equal(MGRASTer:::call.MGRAST(resource = "sa", request = "qu", li = 20, or = "na", issue = FALSE), "http://api.metagenomics.anl.gov/1/sample?limit=20&order=name")
})
