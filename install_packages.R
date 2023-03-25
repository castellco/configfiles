installedPreviously <- read.csv('installed_previously.csv')


baseR <- as.data.frame(installed.packages())


toInstall <- setdiff(installedPreviously, baseR)

installthis <- c(toInstall[["X"]])

install.packages(installthis)
