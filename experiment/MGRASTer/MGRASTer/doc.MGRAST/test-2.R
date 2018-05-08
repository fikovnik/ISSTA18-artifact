library(testthat)

.Random.seed <<- .ext.seed

test_that("doc.MGRAST", {
    expect_equal(MGRASTer:::doc.MGRAST(), NULL)
})
