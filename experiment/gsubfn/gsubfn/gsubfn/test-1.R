library(testthat)

.Random.seed <<- .ext.seed

test_that("gsubfn", {
    expect_equal(gsubfn:::gsubfn(pattern = "[0-9]", replacement = ~paste0(`&`, "!"), x = "ab4cd5"), "ab4!cd5!")
})
