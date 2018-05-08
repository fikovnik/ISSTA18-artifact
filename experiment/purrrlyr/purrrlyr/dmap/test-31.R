library(testthat)

.Random.seed <<- .ext.seed

test_that("dmap", {
    . <- structure(list(cyl = c(6, 6, 4, 6, 8, 6, 8, 4, 4, 6, 6, 8, 8, 8, 8, 8, 8, 4, 4, 4, 4, 8, 8, 8, 8, 4, 4, 4, 8, 6, 
        8, 4)), row.names = c("Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", "Hornet Sportabout", "Valiant", 
        "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", "Merc 450SLC", "Cadillac Fleetwood", 
        "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla", "Toyota Corona", "Dodge Challenger", 
        "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", "Lotus Europa", "Ford Pantera L", 
        "Ferrari Dino", "Maserati Bora", "Volvo 142E"), class = c("grouped_df", "tbl_df", "tbl", "data.frame"), vars = "cyl", 
        drop = TRUE, indices = list(c(2L, 7L, 8L, 17L, 18L, 19L, 20L, 25L, 26L, 27L, 31L), c(0L, 1L, 3L, 5L, 9L, 10L, 29L), 
            c(4L, 6L, 11L, 12L, 13L, 14L, 15L, 16L, 21L, 22L, 23L, 24L, 28L, 30L)), group_sizes = c(11L, 7L, 14L), biggest_group_size = 14L, 
        labels = structure(list(cyl = c(4, 6, 8)), row.names = c(NA, -3L), class = "data.frame", vars = "cyl", drop = TRUE))
    expect_equal(purrrlyr:::dmap(.d = ., .f = mean), structure(list(cyl = c(6, 6, 4, 6, 8, 6, 8, 4, 4, 6, 6, 8, 8, 8, 8, 
        8, 8, 4, 4, 4, 4, 8, 8, 8, 8, 4, 4, 4, 8, 6, 8, 4)), row.names = c("Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", 
        "Hornet Sportabout", "Valiant", "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", 
        "Merc 450SLC", "Cadillac Fleetwood", "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla", 
        "Toyota Corona", "Dodge Challenger", "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", 
        "Lotus Europa", "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E"), class = c("grouped_df", "tbl_df", 
        "tbl", "data.frame"), vars = "cyl", drop = TRUE, indices = list(c(2L, 7L, 8L, 17L, 18L, 19L, 20L, 25L, 26L, 27L, 
        31L), c(0L, 1L, 3L, 5L, 9L, 10L, 29L), c(4L, 6L, 11L, 12L, 13L, 14L, 15L, 16L, 21L, 22L, 23L, 24L, 28L, 30L)), group_sizes = c(11L, 
        7L, 14L), biggest_group_size = 14L, labels = structure(list(cyl = c(4, 6, 8)), row.names = c(NA, -3L), class = "data.frame", 
        vars = "cyl", drop = TRUE)))
})
