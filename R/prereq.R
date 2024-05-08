# install prerequisite packages
# 
# @export

prereq <- function() {
  devtools::install_github("saeyslab/nichenetr") 
  library(nichenetr)
  #BiocManager 유전체 분석 tool 설치 
  install.packages("BiocManager")
  library(BiocManager)
  BiocManager::install("org.Mm.eg.db")
  BiocManager::install("org.Hs.eg.db")
  BiocManager::install("impute")
  library(tidyverse)
  library(org.Mm.eg.db) #for mouse
  library(org.Hs.eg.db) #for human
}