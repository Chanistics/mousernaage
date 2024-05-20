# Removing duplicated gene names
# @param . csv file
# @return . csv file
# @export
rmdup <-function() {
  prac <<- read.csv(file = "~/Desktop/R/hu.csv")
  prac <<- prac[!duplicated(prac$Geneid),]
  prac <<- prac[!(prac$Geneid == 'NA'), ]
  prac <<- na.omit(prac)
  
  write.csv(prac, file="~/Desktop/R/humansym.csv", row.names = F)
}
