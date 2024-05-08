# Converting Ensembl ID to gene symbol
#
# @export
convert_genesym <- function (ms) {
  ms <- as.data.frame(ms)
  msgene <- mapIds(org.Mm.eg.db, keys = ms$id, keytype = "ENSEMBL", column = "SYMBOL")
  ms <- cbind(msgene, ms)
  ms$id <- NULL
  ms <- na.omit(ms)
}