 import excel "C:\Users\fadona\Downloads\P_Data_Extract_From_World_Development_Indicators.xlsx", sheet("Data") firstrow cellrange(A1:BP798)
drop SeriesCode
gen id = _n
reshape long YR, i(id) j(year)
encode SeriesName, gen(varnum)
label save varnum using vardesc, replace
drop id SeriesName
rename YR data
egen id = group(CountryName year)
reshape wide data, i(id) j(varnum)
*tab varnum
*list id varnum if missing(varnum)
*count if missing(varnum)
*drop if missing(varnum)
*reshape wide data, i(id) j(varnum)
rename data1 lifexp
rename lifexp data1
rename data1 gni
rename data2 lifexp
rename data3 popgr
codebook