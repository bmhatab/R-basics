library(itsmr)                          # Load ITSM-R

plotc(wine)                            # Plot the data

M = c("log","season",12,"trend",1)     # Model the data

e = Resid(wine,M)                      # Obtain residuals

test(e)                                # Check for stationarity

a = arma(e,p=1,q=1)                    # Model the residuals

ee = Resid(wine,M,a)                   # Obtain secondary residuals

test(ee)                               # Check for white noise

forecast(wine,M,a)                     # Forecast future values
