use "C:\Users\spsotelo\OneDrive - Syracuse University\Documents\developedgmergedgdp_mftc.dta", clear

describe

summarize year gdp_Developed Mft_sh_Developed

pwcorr gdp_Developed Mft_sh_Developed, sig

collapse (mean) gdp_Developed Mft_sh_Developed, by(year)

