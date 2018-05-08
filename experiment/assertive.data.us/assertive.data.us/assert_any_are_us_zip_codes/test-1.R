library(testthat)

.Random.seed <<- .ext.seed

test_that("assert_any_are_us_zip_codes", {
    zip_codes <- structure(c("90210", "20500", "22313-1450", "223131450", "09901", NA), names = c("Beverley Hills", "The White House", 
        "USPTO", "No hyphen", "Bad area prefix", "Missing"))
    expect_equal(assertive.data.us:::assert_any_are_us_zip_codes(x = zip_codes), structure(c("90210", "20500", "22313-1450", 
        "223131450", "09901", NA), names = c("Beverley Hills", "The White House", "USPTO", "No hyphen", "Bad area prefix", 
        "Missing")))
})
