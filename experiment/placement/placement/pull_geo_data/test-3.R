library(testthat)

.Random.seed <<- .ext.seed

test_that("pull_geo_data", {
    togoogle <- "https://maps.googleapis.com/maps/api/distancematrix/json?origins=40.7484799%2c-73.9854245&destinations=37.4224082%2c-122.0856086&units=imperial&mode=bicycling&language=en-EN&key="
    messages <- FALSE
    expect_equal(placement:::pull_geo_data(urls_out = togoogle, tmout = 10, messages = messages), list(list(destination_addresses = "Google Building 41, 1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA", 
        origin_addresses = "12-14 W 34th St, New York, NY 10001, USA", rows = structure(list(elements = list(structure(list(distance = structure(list(text = "3,330 mi", 
            value = 5359191L), class = "data.frame", row.names = 1L), duration = structure(list(text = "11 days 18 hours", 
            value = 1014914L), class = "data.frame", row.names = 1L), status = "OK"), class = "data.frame", row.names = 1L))), 
            class = "data.frame", row.names = 1L), status = "OK")))
})
