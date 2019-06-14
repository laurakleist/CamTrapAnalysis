stocks <- data.frame(
	time = as.Date('2009-01-01') + 0:9,
	X = rnorm(10, 0, 1),
	Y = rnorm(10, 0, 2),
	Z = rnorm(10, 0, 4)
)
stocksm <- stocks %>% gather(stock, price, -time)
stocksm %>% spread(stock, price)
#>          time           X           Y          Z
#> 1  2009-01-01 -0.25148344  0.03835518 -0.9835856
#> 2  2009-01-02  0.44479712  0.05912151 -4.7102532
#> 3  2009-01-03  2.75541758  1.09965508 -3.9034025
#> 4  2009-01-04  0.04653138 -4.54822971  4.2602293
#> 5  2009-01-05  0.57770907  5.36511437  0.5266825
#> 6  2009-01-06  0.11819487 -0.72244251  1.9545152
#> 7  2009-01-07 -1.91172049  0.42671150 -6.7978023
#> 8  2009-01-08  0.86208648  2.14869176 -5.8829452
#> 9  2009-01-09 -0.24323674 -1.33017650  1.1366014
#> 10 2009-01-10 -0.20608719  2.22790484  5.3492817
stocksm %>% spread(time, price)
#>   stock  2009-01-01  2009-01-02 2009-01-03  2009-01-04 2009-01-05 2009-01-06
#> 1     X -0.25148344  0.44479712   2.755418  0.04653138  0.5777091  0.1181949
#> 2     Y  0.03835518  0.05912151   1.099655 -4.54822971  5.3651144 -0.7224425
#> 3     Z -0.98358565 -4.71025324  -3.903402  4.26022928  0.5266825  1.9545152
#>   2009-01-07 2009-01-08 2009-01-09 2009-01-10
#> 1 -1.9117205  0.8620865 -0.2432367 -0.2060872
#> 2  0.4267115  2.1486918 -1.3301765  2.2279048
#> 3 -6.7978023 -5.8829452  1.1366014  5.3492817

subjects<-c(1,1, 2, 2, 2, 3, 3)
repeats<-c(2, 2, 3, 3, 3, 2, 2)
classification<-c("moose", "moose", "coyote", "coyote", "wolf", "wtd", "wtd")

df1<-as_data_frame(cbind(subjects, repeats, classification))
df2<-df1 %>% spread(subjects, classification)
numRows<-length(unique(df1$subjects))
newDF<-data.frame(subject_id = numeric(numRows),
			   class1 =character(numRows)
			   )
outloop<-length(df1$subjects)
inloop<-numRows
for (i in 1:outloop){
	event<-filter(df1, subjects == z)
	newDF$subject_id<-z
	newDF$class1<- df1$classification[z]
	for (z in 1:numRows){


	}


}

for(i in 1:numRows){
	events<-filter(df1, subjects == i)
	newDF$subject_id<- i
	newDF$class1<-df1$classification[i
							   ]
}