#fake dataframe example

Sp1 <- c(2,1,3,2,1,3)
Sp2 <- c(2,2,3,1,1,2)
Sp3 <- c(2,2,3,2,1,3)
Sp4 <- c(2,2,3,2,2,2)
Sp5 <- c(2,1,3,2,1,3)
df2 <- as_data_frame(cbind(Sp1,Sp2,Sp3,Sp4,Sp5))
df2$Same <- df2$Sp1 == df2$Sp2 &
	df2$Sp1 == df2$Sp3 &
	df2$Sp1 == df2$Sp4 &
	df2$Sp1 == df2$Sp5 &
	df2$Sp2 == df2$Sp3 &
	df2$Sp2 == df2$Sp4 &
	df2$Sp2 == df2$Sp5 &
	df2$Sp3 == df2$Sp4 &
	df2$Sp3 == df2$Sp5 &
	df2$Sp4 == df2$Sp5
