life<-ts(life_Insurance$Public,start=c(1979,1),end =c(2022,1),frequency = 1)
life
plot(life)
library(graphics)
library(tseries)
library(stats)
library(fma)
library(forecast)
decompose(life)
View(life)
str(life)
autoplot(life)
#Test of stationarity
#Augmented Dickey -Fuller (ADF) test
adf.test(life)
Acf(life)
Pacf(life)
ndiffs(life)
li<-arima(life,order=c(4,2,1))
li
accuracy(li)
lifemodel=auto.arima(life,ic="aic",trace = TRUE)
li1<-arima(life,order=c(2,2,2))
li1
li2<-arima(life,order=c(0,2,0))
li2
li3<-arima(life,order=c(1,2,0))
li3
li4<-arima(life,order=c(0,2,1))
li4
li5<-arima(life,order=c(1,2,1))
li5
accuracy(li1)
accuracy(li2)
accuracy(li3)
accuracy(li4)
accuracy(li5)
auto.arima(life)
forecast(li2,10)
plot(forecast(li2,10))
 or
lifemodel<-forecast(li2,level=(95))
lifemodel
plot(lifemodel)
