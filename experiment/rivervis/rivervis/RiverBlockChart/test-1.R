library(testthat)

.Random.seed <<- .ext.seed

test_that("RiverBlockChart", {
    fivecolours <- c("#5588FFFF", "#77EE55FF", "#FFCC44FF", "#EE8833FF", "#FF3333FF")
    B.sitehm <- structure(list(Site = c("F78", "F61", "F62", "F63", "F64", "F81", "F67", "F57", "F52", "F68", "F56", "F60", 
        "F50", "F04", "F66", "F69", "F58"), River = c("Ballinderry", "Ballinderry", "Ballinderry", "Ballinderry", "Ballinderry", 
        "Ballinderry", "Ballymully", "Ballymully", "Kildress", "Killymoon-Claggan", "Killymoon-Claggan", "Killymoon-Claggan", 
        "Kingsmill", "Lissan", "Lissan", "Rock", "Tulnacross"), Distance = c(35.9, 3, 18.7, 21.3, 32, 25.2, 0.6, 6.4, 1, 
        1.1, 10.1, 14.7, 0.7, 2.3, 12.8, 1.8, 1.4), ChanVeg = structure(c(2L, 3L, 2L, 3L, 2L, 1L, 4L, 3L, 2L, 1L, 3L, 3L, 
        4L, 3L, 3L, 3L, 1L), .Label = c("High", "Good", "Moderate", "Poor", "Bad"), class = c("ordered", "factor")), ChanFlow = structure(c(2L, 
        3L, 3L, 3L, 2L, 2L, 2L, 5L, 4L, 2L, 3L, 2L, 2L, 2L, 1L, 4L, 4L), .Label = c("High", "Good", "Moderate", "Poor", "Bad"), 
        class = c("ordered", "factor")), BankVegLeft = structure(c(2L, 5L, 5L, 3L, 2L, 3L, 4L, 3L, 3L, 2L, 4L, 4L, 4L, 4L, 
        1L, 4L, 3L), .Label = c("High", "Good", "Moderate", "Poor", "Bad"), class = c("ordered", "factor")), BankVegRight = structure(c(3L, 
        5L, 4L, 3L, 3L, 3L, 4L, 3L, 2L, 1L, 4L, 4L, 2L, 4L, 3L, 4L, 4L), .Label = c("High", "Good", "Moderate", "Poor", "Bad"), 
        class = c("ordered", "factor")), RipLULeft = structure(c(4L, 4L, 3L, 3L, 3L, 4L, 3L, 4L, 4L, 3L, 4L, 4L, 4L, 3L, 
        4L, 4L, 2L), .Label = c("High", "Good", "Moderate", "Poor", "Bad"), class = c("ordered", "factor")), RipLURight = structure(c(5L, 
        3L, 3L, 4L, 4L, 3L, 4L, 3L, 2L, 3L, 4L, 4L, 3L, 3L, 3L, 3L, 5L), .Label = c("High", "Good", "Moderate", "Poor", "Bad"), 
        class = c("ordered", "factor"))), row.names = c(NA, -17L), class = "data.frame")
    expect_equal(rivervis:::RiverBlockChart(site = B.sitehm$Site, river = B.sitehm$River, distance = B.sitehm$Distance, value = B.sitehm[4:9], 
        arrangement = c(1, 1, 2, 2), block.col = fivecolours, mar = 0.15, site.ofs = 1, site.cex = 0.7, site.order = "R", 
        par.txt = c("ChanVeg", "ChanFlow", "BankVegLeft", "Right", "RipLULeft", "Right")), NULL)
})
