library(testthat)

.Random.seed <<- .ext.seed

test_that("TitlePaste", {
    PAR.NAME.LIST <- list(`1` = "ChanVeg", `2` = "ChanFlow", `3` = c("BankVegLeft", "Right"), `4` = c("RipLULeft", "Right"))
    expect_equal(rivervis:::TitlePaste(x = PAR.NAME.LIST), c("ChanVeg", "ChanFlow", "BankVegLeft/Right", "RipLULeft/Right"))
})
