library(testthat)

.Random.seed <<- .ext.seed

test_that("get_Rscript_filename", {
    expect_equal(getopt:::get_Rscript_filename(), NA_character_)
})
