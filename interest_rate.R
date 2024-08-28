
library("DescTools")
#in class exercise

largest_loan <- GeomSn(30*exp(-0.09/12), exp(-0.09/12),12*20) #exp: euler's number
largest_loan
#homework
regular_deposit3 <- GeomSn(20*(1+0.09/12), 1+0.09/12,30*12)
regular_deposit3
regular_deposit <- GeomSn(150*(1+0.08/365), 1+0.08/365, 30*365)
regular_deposit
#find the largest loan given u can pay 50M a month
total_pv <- GeomSn(50*exp(-0.01), exp(-0.01), 25*12)
total_pvc
#quiz practice
#how long is r% per year compounded continuously for 13yrs in relation to 13%/yr compounded 1/4yr in 13 yrs
#(1+0.13/4)^4*13 = e^(r*13)
loan_multiple <- (1+0.13/4)^(4*13)
r <- 1/13*log(loan_multiple)
r
#present value of 1st 30M paid 1 month: 30*exp(-r*13)
total <- GeomSn(30*exp(-r/12), exp(-r/12), 12*13)
total #key is 2268.4722366531