* Load the dataset
use "C:\Users\spsotelo\OneDrive - Syracuse University\Documents\developingmergedgdp_mftc.dta", clear

* Describe the dataset to check variable names and structure
describe

* Summarize key variables (year, GDP, and manufacturing share) to inspect their distribution
summarize year gdp_Developing Mft_sh_Developing

* Collapse the dataset by year to compute the mean of the manufacturing share
* This step aggregates the data to prepare it for graphing
collapse (mean) Mft_sh_Developing, by(year)

* Create a line graph of the average manufacturing share over time
twoway (line Mft_sh_Developing year), ///
   
* Export the line graph as a PNG file
graph export "C:\Users\spsotelo\Downloads\DEVELOPED MANUF GRAPH.png", as(png) replace

* Create a bar graph of the average manufacturing share over time
graph bar Mft_sh_Developing, over(year, sort(ascending)) ///
 