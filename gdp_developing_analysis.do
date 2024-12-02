* Load the dataset
use "C:\Users\spsotelo\OneDrive - Syracuse University\Documents\developingmergedgdp_mftc.dta", clear

* Describe the dataset to check variable names and types
describe

* Summarize key variables (year, GDP, and manufacturing share) to inspect the data
summarize year gdp_Developing Mft_sh_Developing

* Calculate the correlation coefficient and p-value between GDP and manufacturing share
pwcorr gdp_Developing Mft_sh_Developing, sig

* Collapse the dataset by year to compute the mean of GDP and manufacturing share
collapse (mean) gdp_Developing, by(year)

* Create a line graph of GDP trends over the years
twoway (line gdp_Developing year), ///

* Create a bar graph of GDP trends over the years
graph bar gdp_Developing, over(year, sort(ascending)) ///