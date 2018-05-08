library(testthat)

.Random.seed <<- .ext.seed

test_that("tw_message_tbl", {
    messages_list <- structure(list(structure(list(sid = "SM1jtHMmhOCv90MA3XZiMinXbSY94EPVca", date_created = "Mon, 21 Nov 2016 19:45:47 +0000", 
        date_updated = "Mon, 21 Nov 2016 19:45:48 +0000", date_sent = "Mon, 21 Nov 2016 19:45:47 +0000", to = "+12125557634", 
        from = "+19178675903", body = "Sent from your Twilio trial account - 2016-11-21 14:44:39", status = "delivered", 
        num_segments = "1", num_media = "0", direction = "outbound-api", api_version = "2010-04-01", price = "-0.00750", 
        price_unit = "USD", error_code = NULL, error_message = NULL), class = "twilio_message"), structure(list(sid = "MMH82TU6tVCbGsspcDnvJU47JuTizM3DdE", 
        date_created = "Tue, 15 Nov 2016 15:56:05 +0000", date_updated = "Tue, 15 Nov 2016 15:56:07 +0000", date_sent = "Tue, 15 Nov 2016 15:56:07 +0000", 
        to = "+19178675903", from = "+12125557634", body = "", status = "received", num_segments = "1", num_media = "1", 
        direction = "inbound", api_version = "2010-04-01", price = "-0.01000", price_unit = "USD", error_code = NULL, error_message = NULL), 
        class = "twilio_message")), class = "twilio_messages_list")
    expect_equal(twilio:::tw_message_tbl(messages_list = messages_list), structure(list(sid = c("SM1jtHMmhOCv90MA3XZiMinXbSY94EPVca", 
        "MMH82TU6tVCbGsspcDnvJU47JuTizM3DdE"), date_created = structure(c(1479757547, 1479225365), class = c("POSIXct", "POSIXt")), 
        date_updated = structure(c(1479757548, 1479225367), class = c("POSIXct", "POSIXt")), date_sent = structure(c(1479757547, 
            1479225367), class = c("POSIXct", "POSIXt")), to = c("+12125557634", "+19178675903"), from = c("+19178675903", 
            "+12125557634"), body = c("Sent from your Twilio trial account - 2016-11-21 14:44:39", ""), status = c("delivered", 
            "received"), num_segments = c("1", "1"), num_media = c("0", "1"), direction = c("outbound-api", "inbound"), api_version = c("2010-04-01", 
            "2010-04-01"), price = c("-0.00750", "-0.01000"), price_unit = c("USD", "USD"), error_code = c(NA, NA), error_message = c(NA, 
            NA)), row.names = c(NA, -2L), class = "data.frame"))
})
