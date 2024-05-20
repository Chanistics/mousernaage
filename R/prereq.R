# install prerequisite packages
# @param . csv file
# @return . csv file
# @export
prereq <- function() {
  devtools::install_github("saeyslab/nichenetr") 
  #BiocManager 
  install.packages("BiocManager")
  library(BiocManager)
  BiocManager::install("org.Mm.eg.db")
  BiocManager::install("org.Hs.eg.db")
  BiocManager::install("impute")
}