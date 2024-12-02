* Load the dataset
use "C:\Users\spsotelo\OneDrive - Syracuse University\Documents\developedgmergedgdp_mftc.dta", clear

* Describe the dataset to inspect variables and data structure
describe

* Summarize key variables (year, GDP, and manufacturing share) for an overview
summarize year gdp_Developed Mft_sh_Developed

* Calculate the correlation coefficient and p-value between GDP and manufacturing share
* This helps to analyze the relationship between GDP and manufacturing share in developed economies
pwcorr gdp_Developed Mft_sh_Developed, sig

* Collapse the dataset by year to compute the mean of GDP and manufacturing share
* This step aggregates the data for visualization purposes
collapse (mean) gdp_Developed Mft_sh_Developed, by(year)

* Exclude the year 2020 from the dataset due to distortions caused by the COVID-19 pandemic
drop if year == 2020

* Create a line graph of GDP trends over the years for developing economies
* The graph shows the average GDP per year to illustrate trends
twoway (line gdp_Developed year), ///

* Create a bar graph of GDP trends over the years for developed economies
* The graph uses a bar format to show annual changes in GDP
graph bar gdp_Developed, over(year, sort(ascending)) ///
