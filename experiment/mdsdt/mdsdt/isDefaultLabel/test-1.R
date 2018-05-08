library(testthat)

.Random.seed <<- .ext.seed

test_that("isDefaultLabel", {
    labs <- c("L eyes, L mouth", "L eyes, H mouth", "H eyes, L mouth", "H eyes, H mouth")
    expect_equal(mdsdt:::isDefaultLabel(label = labs), FALSE)
})
