corr = function(directory, threshold = 0) {
        start = getwd()
        setwd(paste(start, directory, sep = '/'))
        dirs = list.files()
        l = length(dirs)
        vec = c()
        for (i in 1:l) {
                dat = read.csv(dirs[i])
                cases = complete.cases(dat)
                if (sum(cases) > threshold) {
                        vec = append(vec, cor(dat[cases, 2],
                                              dat[cases, 3]))
                }
        }
        setwd(start)
        vec
}