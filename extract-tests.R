#!/usr/bin/env Rscript

library(methods)
library(genthat)
library(covr)

options(genthat.source_paths="/CRAN")
options(genthat.debug=FALSE)
options(genthat.save_failed_traces=FALSE)
options(genthat.max_trace_size=getOption("genthat.max_trace_size", 512*1024))

package <- commandArgs(trailingOnly=TRUE)
output_dir <- file.path("experiment", package)

tests_file <- file.path(output_dir, "tests.RDS")
tests_coverage_file <- file.path(output_dir, "coverage.RDS")

with_time <- function(expr) {
  time <- genthat:::stopwatch(result <- force(expr))
  attr(result, "time") <- time
  result
}

if (!file.exists(tests_file)) {
  tests <- with_time(gen_from_package(package, types="all", action="generate", prune_tests=TRUE, output_dir=output_dir))
  saveRDS(tests, tests_file)
}

if (!file.exists(tests_coverage_file)) {
  tests_coverage <- with_time(tally_coverage(package_coverage(file.path("/CRAN", package), type="tests")))
  saveRDS(tests_coverage, tests_coverage_file)
}