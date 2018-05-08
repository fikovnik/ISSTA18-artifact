library(testthat)

.Random.seed <<- .ext.seed

test_that("address_cleaner", {
    address <- c(" 350 Fifth Ave ½, New York, NY 10118, USA ", "  º 1600  Amphitheatre Pkwy, Mountain View, CA 94043, USA")
    expect_equal(placement:::address_cleaner(address = address), c("350 Fifth Ave  1/2, New York, NY 10118, USA", "o 1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA"))
})
