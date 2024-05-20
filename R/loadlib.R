#' loadlib
#'
#' loading pre-requisite library
#'
#'
#' @param () 함수의 input parameter
#' @export
#'
loadlib <- function() {
  library(nichenetr)
  library(BiocManager)
  library(tidyverse)
  library(org.Mm.eg.db) #for mouse
  library(org.Hs.eg.db) #for human
}
