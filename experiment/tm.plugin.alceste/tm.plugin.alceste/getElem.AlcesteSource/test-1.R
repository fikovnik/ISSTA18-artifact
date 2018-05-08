library(testthat)

.Random.seed <<- .ext.seed

test_that("getElem.AlcesteSource", {
    x <- structure(list(encoding = "UTF-8", length = 2L, position = 2, reader = genthat::with_env(structure(function(elem, 
        language, id) {
        `__genthat_captured_seed` <- get(".Random.seed", envir = globalenv())
        ""
        on.exit({
            if (.Internal(getOption("genthat.tracing"))) {
                .Internal(options(genthat.tracing = FALSE))
                default <- genthat:::`__genthat_default_retv`
                retv <- returnValue(default = default)
                if (!identical(retv, default) && !genthat:::is_exception_returnValue(retv)) {
                  genthat:::record_trace(name = "readAlceste", pkg = "tm.plugin.alceste", args = as.list(match.call())[-1], 
                    retv = retv, seed = `__genthat_captured_seed`, env = parent.frame())
                }
                .Internal(options(genthat.tracing = TRUE))
            }
        })
        {
            function(elem, language, id) {
                id2 <- regmatches(elem$content[1], regexec("^([[:digit:]]+) \\*", elem$content[1]))[[1]][2]
                if (!is.na(id2)) id <- id2
                starred <- sub("^(\\*\\*\\*\\* +|[[:digit:]]+ \\*)", "", elem$content[1])
                varexpr <- gsub(" ", "", strsplit(starred, "*", starred, fixed = TRUE)[[1]], fixed = TRUE)
                vars <- strsplit(varexpr[nchar(varexpr) > 0], "_", fixed = TRUE)
                skip <- which(grepl("^-\\*", elem$content))
                doc <- PlainTextDocument(x = elem$content[-c(1, skip)], id = id, language = language)
                for (v in vars) {
                  if (is.na(v[2])) meta(doc, v[1]) <- TRUE else meta(doc, v[1]) <- v[2]
                }
                doc
            }
        }
    }, class = c("FunctionGenerator", "function")), env = getNamespace("tm.plugin.alceste")), content = list(`1` = c("**** *var1_1 *var2_levela *boolean1", 
        "-*theme1", "Contents of the first text, first theme.", "-*theme2", "Contents of the second text, second theme. A few accentuated characters: éêàù.", 
        "New line."), `2` = c("00002 *boolean2 *var1_2 *var2_levelb", "Contents of the second text.")), uri = "/usr/local/lib/R/site-library/tm.plugin.alceste/texts/alceste_test.txt"), 
        class = c("AlcesteSource", "SimpleSource", "Source"))
    expect_equal(tm.plugin.alceste:::getElem.AlcesteSource(x = x), list(content = c("00002 *boolean2 *var1_2 *var2_levelb", 
        "Contents of the second text."), uri = NULL))
})
