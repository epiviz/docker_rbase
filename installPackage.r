#!/usr/bin/env r

suppressMessages(library(docopt))
suppressMessages(library(devtools))

doc <- "Usage: installPackage.r [-p PATH]

Options:
  -p --path PATH  package path [default: .]

Example:
  installPackage.r -p ./epivizFileServer
"

opt <- docopt(doc)
invisible(devtools::install(pkg=opt$path))
