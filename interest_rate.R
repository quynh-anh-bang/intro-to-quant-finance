
library("DescTools")
#in class exercise

largest_loan <- GeomSn(30*exp(-0.09/12), exp(-0.09/12),240) #exp: euler's number
largest_loan
#homework
regular_deposit3 <- GeomSn(20*(1+0.09/12), 1+0.09/12,30*12)
regular_deposit3
regular_deposit <- GeomSn(150*(1+0.08/365), 1+0.08/365, 30*365)
regular_deposit
#find the largest loan given u can pay 50M a month
total_pv <- GeomSn(50*exp(-0.01), exp(-0.01), 25*12)
total_pv