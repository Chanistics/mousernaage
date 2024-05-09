# Load essential library
# 
# @export

loadlib <- function() {
  library(nichenetr)
  library(BiocManager)
  library(tidyverse)
  library(org.Mm.eg.db) #for mouse
  library(org.Hs.eg.db) #for human
}