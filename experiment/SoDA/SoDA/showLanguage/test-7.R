library(testthat)

.Random.seed <<- .ext.seed

test_that("showLanguage", {
    object <- `[[`
    expect_equal(SoDA:::showLanguage(object = object), `[[`)
})
