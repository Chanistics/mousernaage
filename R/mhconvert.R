#Converting mouse gene symbol to human gene symbol
#
# @export
mhconvert <-function() {
  Geneid = ms$msgene %>% convert_mouse_to_human_symbols()
  hu <<- cbind(Geneid, ms)
  hu$msgene <- NULL
  write.csv(hu, file="~/Desktop/R/hu.csv", row.names = F)
}
