import excel "C:\Users\fadona\Downloads\P_Data_Extract_From_World_Development_Indicators (2).xlsx", sheet("Data") firstrow
drop SeriesCode
gen id = _n
reshape long YR, i(id) j(year)
encode SeriesName, gen(varnum)
label save varnum using vardesc, replace
drop id SeriesName
rename YR data
egen id = group(CountryName year)
reshape wide data, i(id) j(varnum)
drop if missing(varnum)
reshape wide data, i(id) j(varnum)
rename data7 lifexp
rename data5 gdpgr
rename data6 gni
rename data1 famwork
rename data2 indemp
rename data3 emppop