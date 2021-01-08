data <-datasets::quakes
data
plot(data)
summary(data[,c(3,4)])
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
plot(data$depth)
plot(data$depth, data$mag)
barplot(data$depth, main = 'Depth of Earthquake Occured',
        xlab = 'depth', col='green',horiz = FALSE)
hist(data$mag)
boxplot(data$mag, main='Magnitudes')
variance <-data[,c(3,4)]
var(variance)
skew <-skewness(variance)
skew
kurt <-kurtosis(variance)
kurt
