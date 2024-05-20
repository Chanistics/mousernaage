#' convert_genesym
#'
#' convert ENSEMBL ID to Official gene symbol
#'
#'
#' @param () 함수의 input parameter
#' @export
convert_genesym <- function () {
  ms1 <<- as.data.frame(ms)
  msgene <<- mapIds(org.Mm.eg.db, keys = ms1$id, keytype = "ENSEMBL", column = "SYMBOL")
  ms2 <<- cbind(msgene, ms1)
  ms2$id <<- NULL
  ms3 <<- na.omit(ms2)
  ms <<- ms3
}

#' prereq
#'
#' installing pre-requisite packages
#'
#'
#' @param () 함수의 input parameter
#' @export
prereq <- function() {
  devtools::install_github("saeyslab/nichenetr")
  #BiocManager
  install.packages("BiocManager")
  library(BiocManager)
  BiocManager::install("org.Mm.eg.db")
  BiocManager::install("org.Hs.eg.db")
  BiocManager::install("impute")
}


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

#' mhconvert
#'
#' Converting mouse gene symbol to human gene symbol
#'
#'
#' @param () 함수의 input parameter
#' @export
mhconvert <-function() {
  Geneid = ms$msgene %>% convert_mouse_to_human_symbols()
  hu <<- cbind(Geneid, ms)
  hu$msgene <- NULL
  write.csv(hu, file="~/Desktop/R/hu.csv", row.names = F)
}

#' rmdup
#'
#' Removing duplicated genes and NAs
#'
#'
#' @param () 함수의 input parameter
#' @export

rmdup <-function() {
  prac <<- read.csv(file = "~/Desktop/R/hu.csv")
  prac <<- prac[!duplicated(prac$Geneid),]
  prac <<- prac[!(prac$Geneid == 'NA'), ]
  prac <<- na.omit(prac)

  write.csv(prac, file="~/Desktop/R/humansym.csv", row.names = F)
}
