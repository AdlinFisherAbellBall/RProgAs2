pollutantmean = function(directory, pollutant, id = 1:332) {
        dat = read.csv(directory)
        vec = dat[, pollutant][dat[,'ID'] == id]
        mean(vec, na.rm = TRUE)
}