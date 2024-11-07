## ---- echo = FALSE, results = 'hide'---------------------------------------
library(knitr)
opts_chunk$set(error = FALSE)

## ----style, echo = FALSE, results = 'asis'---------------------------------
##BiocStyle::markdown()

## ---- message = FALSE------------------------------------------------------
library(SGSeq)


input <- function(inputfile) {
   txf_ucsc <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
sgf_ucsc <- convertToSGFeatures(txf_ucsc)
write.csv(sgf_ucsc, paste(outputfile,"csv",sep="."))
saveRDS(sgf_ucsc, paste(outputfile, "rds", sep="."))

}

