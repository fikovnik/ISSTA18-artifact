library(testthat)

.Random.seed <<- .ext.seed

test_that("check_df_consistency", {
    .d <- structure(list(mpg = c(21, 21, 22.8, 21.4, 18.7), cyl = c(6, 6, 4, 6, 8)), row.names = c("Mazda RX4", "Mazda RX4 Wag", 
        "Datsun 710", "Hornet 4 Drive", "Hornet Sportabout"), class = "data.frame")
    expect_equal(purrrlyr:::check_df_consistency(.d = .d), NULL)
})
