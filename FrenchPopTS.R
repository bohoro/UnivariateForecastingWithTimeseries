#!/usr/bin/env Rscript

################################################################################
# Forecasting France Popluation
#
# very basic time series test and forecast with Quandl 
# data is based on French population from 1960 to 2011
################################################################################

# LIBS
library(Quandl)
library(forecast)

################################################################################
# Getting the data
################################################################################

# load using your quandl auth to use the API
# Quandl.auth("xxxxx")

# get the raw ts data, FRANCE TOTAL POPLUATION BY YEAR
RawTimeseries = Quandl("WORLDBANK/FRA_SP_POP_TOTL",type = "ts")

# fix the start year
MyTimeSeries = ts(RawTimeseries, start = c(1960))

################################################################################
# Producing the forecast
################################################################################
# Computes Holt-Winters Filtering of a given time series. 
# In this case we are ignoring seasonality - gamma=FALSE
MySmoothTimeSeriesForecast <- HoltWinters(MyTimeSeries, gamma=FALSE)

# produce a forecast for popluation for the next 8 years 2012 - 2026      
populationForecast <- forecast.HoltWinters(MySmoothTimeSeriesForecast, h=15)

# Ouput chart of probabilities as as well as plot results
options(scipen=12)
print(populationForecast)        
plot.forecast(populationForecast)

