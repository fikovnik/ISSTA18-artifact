library(testthat)

.Random.seed <<- .ext.seed

test_that("PathBuild", {
    riverlayout <- structure(list(rivercode = c("river1", "river2", "river3", "river4", "river5", "river6", "river7", "river8"), 
        river = c("Ballinderry", "Lissan", "Ballymully", "Kingsmill", "Killymoon-Claggan", "Rock", "Kildress", "Tulnacross"), 
        length = c(45.3, 21.3, 17.1, 13.5, 28.5, 16, 9.3, 7.3), parent = c(NA, "Ballinderry", "Lissan", "Ballinderry", "Ballinderry", 
            "Killymoon-Claggan", "Ballinderry", "Ballinderry"), position = c("M", "L", "L", "R", "R", "L", "R", "L"), distance = c(0, 
            11.5, 1.7, 13.9, 19.7, 9.3, 30.5, 32.3)), row.names = c(NA, -8L), class = "data.frame")
    OBN <- 8L
    expect_equal(rivervis:::PathBuild(river = riverlayout$river, parent = riverlayout$parent, OBN = OBN), structure(c("Ballinderry", 
        "Lissan", "Ballymully", "Kingsmill", "Killymoon-Claggan", "Rock", "Kildress", "Tulnacross", NA, "Ballinderry", "Lissan", 
        "Ballinderry", "Ballinderry", "Killymoon-Claggan", "Ballinderry", "Ballinderry", NA, NA, "Ballinderry", NA, NA, "Ballinderry", 
        NA, NA), .Dim = c(8L, 3L), .Dimnames = list(NULL, c("river", "parent", ""))))
})
