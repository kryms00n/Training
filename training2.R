#install (i finally do it :))
library(data.table)


DT = as.data.table(iris)
DT[Petal.Width > 1.0, mean(Petal.Length), by = Species]


#describing the data
ROWS <- nrow(DT)
COLUMNS <- ncol(DT)
NAMES <- names(DT)
HEAD <- head(DT)

#selecting columns
CHECK = DT[ , 1]
CHECK2 = DT[, c(2:5), with=FALSE]

#renaming
setnames(DT, c("Species"), c("Newname"))

#sorting
Q = setorder(DT, Newname)
