# Load essential library
# @param . csv file
# @return . csv file
# @export

loadlib <- function() {
  library(nichenetr)
  library(BiocManager)
  library(tidyverse)
  library(org.Mm.eg.db) #for mouse
  library(org.Hs.eg.db) #for human
}