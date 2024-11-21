import delimited "https://ourworldindata.org/grapher/manufacturing-share-of-total-employment.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=chart&country=LUX~IRL~SGP~QAT~BMU~ARE~CHE~CYM~NOR~USA~SMR~DNK~NLD~BRN~HKG~AUT~ISL~SWE~BEL~DEU~BHR~MAC~AUS~SAU~CAN~KWT~FIN~MLT~GBR~FRA~KOR~NZL~CYP~ISR~ITA~JPN~ABW~CZE~SVN~ESP~LTU~EST~POL~PRT~GUY~HUN~OMN~BHS~HRV~PRI~PAN~SVK~TUR~LVA~ROU~GRC~KNA~MYS~BGR~RUS~KAZ~CHL~SYC~URY~TTO~CUW~MUS~ARG~ATG~MNE~CRI~SRB~TCA~MEX", clear

sort entity year



save "C:\Users\meiska\OneDrive - Syracuse University\Documents\GitHub\course-project-development\developedManufacturing.dta", replace


import delimited "https://ourworldindata.org/grapher/gdp-per-capita-worldbank.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=chart&country=LUX~IRL~SGP~QAT~BMU~ARE~CHE~CYM~NOR~USA~WB_NA~SMR~DNK~NLD~BRN~HKG~AUT~ISL~SWE~DEU~BEL~BHR~MAC~AUS~SAU~KWT~CAN~FIN~MLT~GBR~FRA~KOR~NZL~CYP~ISR~ITA~JPN~ABW~CZE~SVN~ESP~LTU~EST~POL~PRT~GUY~HUN~OMN~BHS~HRV~PRI~PAN~SVK~TUR~LVA~ROU~GRC~KNA~MYS~RUS~BGR~KAZ~CHL~SYC~URY~TTO~CUW~MUS~ARG~ATG~MNE~CRI~MDV~SRB~TCA~MEX", clear

save "C:\Users\meiska\OneDrive - Syracuse University\Documents\GitHub\course-project-development\developedGDPpc.dta", replace


sort entity year


use "C:\Users\meiska\OneDrive - Syracuse University\Documents\GitHub\course-project-development\developedManufacturing.dta", clear

sort entity year

merge m:m country year using developedGDPpc.dta

save "C:\Users\meiska\OneDrive - Syracuse University\Documents\GitHub\course-project-development\developedmergedgdp_mftc.dta", replace


* save this data

* import another variable of interest and save as .dta

* sort

* merge