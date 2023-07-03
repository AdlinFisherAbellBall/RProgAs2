pollutantmean = function(directory, pollutant, id = 1:332) {
        start = getwd()
        setwd(paste(start, directory, sep = '/'))
        dirs = list.files()[id]
        l = length(dirs)
        n = rep(0, l)
        s = rep(0, l)
        for (i in 1:l) {
                dat = read.csv(dirs[i])
                s[i] = sum(dat[,pollutant], na.rm = TRUE)
                n[i] = sum(!is.na(dat[, pollutant]))
        }
        setwd(start)
        sum(s)/sum(n)
}