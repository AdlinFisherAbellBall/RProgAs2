complete = function(directory, id = 1:332) {
        start = getwd()
        setwd(paste(start, directory, sep = '/'))
        dirs = list.files()[id]
        l = length(dirs)
        mat = matrix(nrow = l, ncol = 2)
        for (i in 1:l) {
                dat = read.csv(dirs[i])
                mat[i, 1] = id[i]
                mat[i, 2] = sum(complete.cases(dat))
        }
        df = data.frame(mat)
        colnames(df) = c('id', 'nobs')
        setwd(start)
        df
}