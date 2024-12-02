use "C:\Users\spsotelo\OneDrive - Syracuse University\Documents\developingmergedgdp_mftc.dta", clear

describe

summarize year gdp_Developing Mft_sh_Developing

collapse (mean) Mft_sh_Developing, by(year)

twoway (line Mft_sh_Developing year), ///
   
graph export "C:\Users\spsotelo\Downloads\DEVELOPED MANUF GRAPH.png", as(png) replace

graph bar Mft_sh_Developing, over(year, sort(ascending)) ///
 
