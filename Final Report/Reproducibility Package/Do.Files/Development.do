cd "C:\Users\meiska\OneDrive - Syracuse University\Documents\GitHub\course-project-development\Reproducibility Package"

log using Development, replace text

cd "C:\Users\meiska\OneDrive - Syracuse University\Documents\GitHub\course-project-development\Reproducibility Package\Data"

import delimited "https://ourworldindata.org/grapher/manufacturing-share-of-total-employment.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=chart&country=LUX~IRL~SGP~QAT~BMU~ARE~CHE~CYM~NOR~USA~SMR~DNK~NLD~BRN~HKG~AUT~ISL~SWE~BEL~DEU~BHR~MAC~AUS~SAU~CAN~KWT~FIN~MLT~GBR~FRA~KOR~NZL~CYP~ISR~ITA~JPN~ABW~CZE~SVN~ESP~LTU~EST~POL~PRT~GUY~HUN~OMN~BHS~HRV~PRI~PAN~SVK~TUR~LVA~ROU~GRC~KNA~MYS~BGR~RUS~KAZ~CHL~SYC~URY~TTO~CUW~MUS~ARG~ATG~MNE~CRI~SRB~TCA~MEX", clear

rename _9_2_2__sl_tlf_manf Mft_sh_Developed

sort entity year

save "developedManufacturing.dta", replace

import delimited "https://ourworldindata.org/grapher/gdp-per-capita-worldbank.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=chart&country=LUX~IRL~SGP~QAT~BMU~ARE~CHE~CYM~NOR~USA~WB_NA~SMR~DNK~NLD~BRN~HKG~AUT~ISL~SWE~DEU~BEL~BHR~MAC~AUS~SAU~KWT~CAN~FIN~MLT~GBR~FRA~KOR~NZL~CYP~ISR~ITA~JPN~ABW~CZE~SVN~ESP~LTU~EST~POL~PRT~GUY~HUN~OMN~BHS~HRV~PRI~PAN~SVK~TUR~LVA~ROU~GRC~KNA~MYS~RUS~BGR~KAZ~CHL~SYC~URY~TTO~CUW~MUS~ARG~ATG~MNE~CRI~MDV~SRB~TCA~MEX", clear

rename ny_gdp_pcap_pp_kd gdp_Developed

sort entity year

save "developedGDPpc.dta", replace

use "developedManufacturing.dta", clear

merge 1:1 entity year using developedGDPpc.dta

save "developedmergedgdp_mftc.dta", replace

log close

* save this data

* import another variable of interest and save as .dta

* sort

* merge

* To analyze the data, you can use these commands to get a correlation test, and then to get a scatterplot or graph, you use the last commands.


* First drop commands to drop years greater than 2019; 

drop if year > 2019

* To see the data, you can use the command (helps visualize the data set), and other presentations you can use 
codebook 

describe

summarize year gdp_Developed Mft_sh_Developed

*After merging to get a t-test for the developed countries 

pwcorr Mft_sh_Developed gdp_Developed, sig

* For the scatterplot of Developed - with line of best fit 

twoway (scatter gdp_Developed Mft_sh_Developed) (lfit gdp_Developed Mft_sh_Developed), title("Developed Countries") xtitle("Manufacturing Share of Employment") ytitle("GDP per Capita")