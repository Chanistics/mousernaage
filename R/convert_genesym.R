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

