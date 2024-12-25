use "C:\Users\spsotelo\OneDrive - Syracuse University\Documents\developingmergedgdp_mftc.dta", clear

describe

summarize year gdp_Developing Mft_sh_Developing

pwcorr gdp_Developing Mft_sh_Developing, sig

collapse (mean) gdp_Developing, by(year)

twoway (line gdp_Developing year), ///

graph bar gdp_Developing, over(year, sort(ascending)) ///
