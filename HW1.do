#use "C:\Users\amalia03\Desktop\WAGE1.DTA"
use "/Users/amaliarios/Desktop/Everything UCD/ECN_140/WAGE1.DTA"
summarize 

//2.1
summarize wage educ

//2.2
histogram wage
histogram educ

//2.3
twoway (scatter wage educ)

//2.4
summarize wage if educ <= 12

//2.5
ttest educ == 11

//2.6
gen log_wage = log(wage)
gen diff = lwage - log_wage

summarize diff

//3
webuse nhanes2l, clear
regress bpsystol age, vce(robust)
etable
regress bpsystol age weight, vce(robust)
etable, append cstat(_r_b) cstat(_r_se) mstat(N) showstars showstarsnote

//4.8
clear
set obs 100000

local mu = 2
local sigma = 2

gen X = rnormal(`mu', `sigma')

histogram X, title("N(2,2) pdf")

//4.9
clear
set obs 100000

local df = 5

gen Y = rchi2(`df')
histogram Y, title("Chi2(5) pdf")

//4.10
clear
set obs 100000
local dfZ = 10

gen Z = rt(`dfZ')

histogram Z, title("Student's t(10) pdf")

//4.11
clear
set obs 100000

gen Z1 = rchi2(3)
gen Z2 = rchi2(100)

gen X = (Z1/3)/(Z2/100)

histogram X, title("F(3,100) pdf")





