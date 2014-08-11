#!/usr/bin/env Rscript

# Data for "Forecasting: principles and practice"
library(fpp, quietly = TRUE, verbose = FALSE)

### Electricity net generation measured in billions of kilowatt hours (kWh)
data(usmelec)

### plot the time series
plot(usmelec, ylab="Net Generation Measured in Billions of Kilowatt Hours (kWh)", xlab="Year", main="Electricity Monthly Total Net Generation")

### plot the seaonality
seasonplot(usmelec, ylab="Net Generation Measured in Billions of Kilowatt Hours (kWh)", xlab="Year", main="Seasonal Plot of Electricity Monthly Total Net Generation", col=2:500)

### split the data into train and test sets
uselecTrain <- window(usmelec, 1973, 2009)
uselecTest <- window(usmelec, 2009, 2010)

# fully automated forecasting
fcast <- forecast(uselecTrain, h=12)
sprintf("The method selected for the data is: %s", fcast$method)

plot(fcast, ylab="Net Generation Measured in Billions of Kilowatt Hours (kWh)", xlab="Year", main="Electricity Monthly Total Net Generation")
grid()

plot(fcast, ylab="Net Generation Measured in Billions of Kilowatt Hours (kWh)", xlab="Year", main="Electricity Monthly Total Net Generation")
# now plot the actual values to compare to the forecast
lines(uselecTest, col="red", lwd=1.5)
grid()




### meanf - mean
### naive or rwf - naive
### snaive - seasonal naive
### rwf - drift

