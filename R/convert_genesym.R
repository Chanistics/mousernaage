# Converting Ensembl ID to gene symbol
# @param . csv file
# @return . csv file
# @export
convert_genesym <- function () {
  ms1 <<- as.data.frame(ms)
  msgene <<- mapIds(org.Mm.eg.db, keys = ms1$id, keytype = "ENSEMBL", column = "SYMBOL")
  ms2 <<- cbind(msgene, ms1)
  ms2$id <<- NULL
  ms3 <<- na.omit(ms2)
  ms <<- ms3
}

