library(testthat)

.Random.seed <<- .ext.seed

test_that("checkGeneSymbols", {
    x <- c("FN1", "TP53", "UNKNOWNGENE", "7-Sep", "9/7", "1-Mar", "Oct4", "4-Oct", "OCT4-PG4", "C19ORF71", "C19orf71")
    expect_equal(HGNChelper:::checkGeneSymbols(x = x), structure(list(x = c("FN1", "TP53", "UNKNOWNGENE", "7-Sep", "9/7", 
        "1-Mar", "Oct4", "4-Oct", "OCT4-PG4", "C19ORF71", "C19orf71"), Approved = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, 
        FALSE, FALSE, FALSE, FALSE, TRUE), Suggested.Symbol = c("FN1", "TP53", NA, "SEPT7", "SEPT7", "MARC1 /// MARCH1", 
        "POU5F1", "POU5F1", "POU5F1P4", "C19orf71", "C19orf71")), row.names = c(NA, -11L), class = "data.frame"))
})
