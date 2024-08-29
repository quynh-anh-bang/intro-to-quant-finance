
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
#present value of 1st 30M paid 1 month: 30*exp(-r*13)
#total <- GeomSn(30*exp(-r/12), exp(-r/12), 12*13)

convert_cont <- function(annual_rate, k_times_compounded_yr, n){
  loan_multiple <- (1+annual_rate/k_times_compounded_yr)^(k_times_compounded_yr*n)
  1/n*log(loan_multiple)
}
quiz_practice1 <- convert_cont(0.13,4,13)
quiz_practice2 <- convert_cont(0.14,4,19)
find_largest_loan <- function(each_payment, annual_rate, k_times_pay_a_yr, yr){
  GeomSn(each_payment*exp(-annual_rate/k_times_pay_a_yr), exp(-annual_rate/k_times_pay_a_yr),k_times_pay_a_yr*yr)
}
answer_quiz_practice1 <- find_largest_loan(30,quiz_practice1,12,13)
answer_quiz_practice2 <- find_largest_loan(22,quiz_practice2,12,19)
answer_quiz_practice1
answer_quiz_practice2