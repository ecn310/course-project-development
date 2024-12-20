use "C:\Users\spsotelo\OneDrive - Syracuse University\Documents\developedgmergedgdp_mftc.dta", clear

describe

summarize year gdp_Developed Mft_sh_Developed

pwcorr gdp_Developed Mft_sh_Developed, sig

twoway (line Mft_sh_Developed year),

graph bar Mft_sh_Developed, over(year, sort(ascending)) 
