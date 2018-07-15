Univariate Forecasting With Timeseries
===================================
### Brian O'Horo

Automatic Forecasting via R

This paper illustrates the practical application of automatic forecasting via the R language.  For the sake of this paper, forecasting entails predicting the future or simply making statements about events where the outcome has yet to be observed.  

Not every phenomenon is subject to forecasting.  Generally speaking, this approach applies to systems where we have good historical data and our expectations of the consistency of change within a given system, while potentially unknown, can be modeled [1].

For illustration of forecasting we will be using the dataset “Electricity monthly total net generation January 1973-October 2010” from the US Energy Information Administration as packaged by Rob J. Hyndman in his “fpp” R package.

Two questions we will be looking to answer with this dataset.  One, is there a seasonal component to monthly electric net generation?  Two, can we forecast future unobserved data points?

See http://rpubs.com/bohoro/AutomaticForecasts for the published article.
