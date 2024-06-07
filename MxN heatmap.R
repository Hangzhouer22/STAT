con <- textConnection("
ColName,Val1,Val2
abc,0.22,0.86
def,2.41,1.09
ghi,3.13,1.50
JKL, 3.98, 1.99
MNO,4.68,2.68
RST,0.34, 0.55")
# data imported as a data.frame
vals <- read.csv(con)
# column_to_rownames from package tibble 
# adds rownames to a data.frame using a column
vals_matrix <- as.matrix(tibble::column_to_rownames(vals, var = "ColName"))
vals_matrix
#     Val1 Val2
# abc 0.22 0.86
# def 2.41 1.09
# ghi 3.13 1.50
heatmap(x = vals_matrix, margins = c(10, 10))