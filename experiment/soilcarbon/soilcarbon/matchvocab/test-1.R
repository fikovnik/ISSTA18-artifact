library(testthat)

.Random.seed <<- .ext.seed

test_that("matchvocab", {
    expect_equal(soilcarbon:::matchvocab(var_data = c("A", "B"), var_vocab = c("A", "B", "C"), tab = "site", error = 0), 
        0)
})
