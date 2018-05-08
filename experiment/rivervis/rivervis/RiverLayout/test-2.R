library(testthat)

.Random.seed <<- .ext.seed

test_that("RiverLayout", {
    B.river <- structure(list(River = c("Ballinderry", "Lissan", "Ballymully", "Kingsmill", "Killymoon-Claggan", "Rock", 
        "Kildress", "Tulnacross"), Length = c(45.3, 21.3, 17.1, 13.5, 28.5, 16, 9.3, 7.3), Position = c("M", "L", "L", "R", 
        "R", "L", "R", "L"), Parent = c(NA, "Ballinderry", "Lissan", "Ballinderry", "Ballinderry", "Killymoon-Claggan", "Ballinderry", 
        "Ballinderry"), Distance = c(0, 11.5, 1.7, 13.9, 19.7, 9.3, 30.5, 32.3)), class = "data.frame", row.names = c(NA, 
        -8L))
    expect_equal(rivervis:::RiverLayout(river = B.river$River, length = B.river$Length, parent = B.river$Parent, position = B.river$Position, 
        distance = B.river$Distance), list(riverdata = structure(list(river = c("Ballinderry", "Lissan", "Ballymully", "Kingsmill", 
        "Killymoon-Claggan", "Rock", "Kildress", "Tulnacross"), rivercode = c("river1", "river2", "river3", "river4", "river5", 
        "river6", "river7", "river8"), length = c(45.3, 21.3, 17.1, 13.5, 28.5, 16, 9.3, 7.3), parent = c(NA, "Ballinderry", 
        "Lissan", "Ballinderry", "Ballinderry", "Killymoon-Claggan", "Ballinderry", "Ballinderry"), position = c("M", "L", 
        "L", "R", "R", "L", "R", "L"), distance = c(0, 11.5, 1.7, 13.9, 19.7, 9.3, 30.5, 32.3), rmouth = c(0, 11.5, 13.2, 
        13.9, 19.7, 29, 30.5, 32.3), rsource = c(45.3, 32.8, 30.3, 27.4, 48.2, 45, 39.8, 39.6), row = c(-0, -1, -2, 1, 2, 
        1, 3, -2)), row.names = c(NA, -8L), class = "data.frame"), H.MAX = 6, H.SIZE = 0.1, W.MAX = 48.2, W.SIZE = 0.020746887966805, 
        X1 = c(0, 0.238589211618257, 0.273858921161826, 0.288381742738589, 0.408713692946058, 0.601659751037344, 0.632780082987552, 
            0.670124481327801), X2 = c(0.939834024896265, 0.680497925311203, 0.628630705394191, 0.568464730290456, 1, 0.933609958506224, 
            0.825726141078838, 0.821576763485477), Y = c(0.35, 0.2, 0.05, 0.5, 0.65, 0.5, 0.8, 0.05), direction = 1))
})
