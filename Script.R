require(xlsx)
ds <- read.xlsx("C:/A/2 University/Coursera/The Data Scientists Toolbox/Exercises/R Ex.1/EAEF01.xls", 1)
fm <- lm(ds$EARNINGS ~ ds$S, data=ds)
input <- read.xlsx("C:/A/2 University/Coursera/The Data Scientists Toolbox/Exercises/R Ex.1/Input.xlsx", 1)
results = predict(fm, newdata=input)
write.xlsx(results, file="C:/A/2 University/Coursera/The Data Scientists Toolbox/Exercises/R Ex.1/Results.xls")

