library(testthat)

.Random.seed <<- .ext.seed

test_that("drive_time", {
    start <- "40.7484799,-73.9854245"
    end <- "37.4224082,-122.0856086"
    expect_equal(placement:::drive_time(address = start, dest = end, auth = "standard_api", privkey = "", clean = FALSE, 
        travel_mode = "bicycling", units = "imperial", verbose = FALSE, add_date = "today"), structure(list(origin = "12-14 W 34th St, New York, NY 10001, USA", 
        destination = "Google Building 41, 1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA", dist_num = 3330.05, dist_txt = "3,330 mi", 
        time_secs = 1014914, time_mins = 16915.27, time_hours = 281.92, time_txt = "11 days 18 hours", return_stat = "OK", 
        status = "OK", error_message = "", input_url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=40.7484799%2c-73.9854245&destinations=37.4224082%2c-122.0856086&units=imperial&mode=bicycling&language=en-EN&key=", 
        geocode_dt = structure(17659, class = "Date")), row.names = c(NA, -1L), class = "data.frame"))
})
