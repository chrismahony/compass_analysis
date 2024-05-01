#first set up normal seurat object

fibs_only <- subset(amp2_small, idents=levels(amp2_small)[grep("F-", levels(amp2_small))])
ncol(fibs_only)

fibs_only$cluster_name %>% unique()

fibs_only <- fibs_only %>% ScaleData()

#further subseting (optional)
size=1234
fibs_only_small <- fibs_only[,colnames(fibs_only) %in% sample(colnames(fibs_only), size=size)]

fibs_only_small <- fibs_only_small %>% ScaleData()

mtx_fibs <- GetAssayData(object = fibs_only_small, assay = "RNA", slot = "data")

write.table(mtx_fibs, "/rds/projects/c/croftap-celldive01/amp2/amp2_marta_test/fibs_expression.tsv", sep="\t")
