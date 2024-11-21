. import delimited "https://ourworldindata.org/grapher/manufacturing-share-of-total-employmen
> t.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=chart&country=DOM~BLR~CHN~THA~MKD~G
> EO~BIH~ARM~COL~BWA~IRN~BRB~LCA~AZE~BRA~SUR~GRD~PLW~PRY~ZAF~MDA~LBN~EGY~PER~OWID_KOS~IDN~FJI
> ~LKA~MNG~BTN~DMA~VNM~DZA~NRU~ECU~UKR~TUN~JAM~NAM~JOR~BLZ~SLV~IRQ~GTM~SWZ~PHL~BOL~MAR~UZB~LA
> O~CPV~IND~BGD~TON~MHL~AGO~NIC~PSE~HND~CIV~GHA~PAK~MRT~WSM~KGZ~DJI~NGA~KEN~TUV~KHM~MMR~NPL~T
> JK~TLS~PNG~CMR~COG~SDN~SEN~STP~BEN~ZMB~COM~HTI~FSM~VUT~GIN~TZA~ETH~RWA~UGA~SLB~LSO~ZWE~TGO~
> BFA~MLI~GMB~KIR~GNB~SLE~AFG~MDG~MWI~LBR~SOM~TCD~NER~MOZ~COD~BDI", clear `
option ` not allowed
r(198);

. import delimited "https://ourworldindata.org/grapher/manufacturing-share-of-total-employmen
> t.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=chart&country=DOM~BLR~CHN~THA~MKD~G
> EO~BIH~ARM~COL~BWA~IRN~BRB~LCA~AZE~BRA~SUR~GRD~PLW~PRY~ZAF~MDA~LBN~EGY~PER~OWID_KOS~IDN~FJI
> ~LKA~MNG~BTN~DMA~VNM~DZA~NRU~ECU~UKR~TUN~JAM~NAM~JOR~BLZ~SLV~IRQ~GTM~SWZ~PHL~BOL~MAR~UZB~LA
> O~CPV~IND~BGD~TON~MHL~AGO~NIC~PSE~HND~CIV~GHA~PAK~MRT~WSM~KGZ~DJI~NGA~KEN~TUV~KHM~MMR~NPL~T
> JK~TLS~PNG~CMR~COG~SDN~SEN~STP~BEN~ZMB~COM~HTI~FSM~VUT~GIN~TZA~ETH~RWA~UGA~SLB~LSO~ZWE~TGO~
> BFA~MLI~GMB~KIR~GNB~SLE~AFG~MDG~MWI~LBR~SOM~TCD~NER~MOZ~COD~BDI", clear
(4 vars, 1,047 obs)

. save "C:\Users\meiska\OneDrive - Syracuse University\310 Class\Data from Our World in Data"
> , replace
(note: file C:\Users\meiska\OneDrive - Syracuse University\310 Class\Data from Our World in D
> ata.dta not found)
file C:\Users\meiska\OneDrive - Syracuse University\310 Class\Data from Our World in Data.dta
>  saved

. save "C:\Users\meiska\OneDrive - Syracuse University\310 Class\Data from Our World in Data.dta", replace
file C:\Users\meiska\OneDrive - Syracuse University\310 Class\Data from Our World in Data.dta saved

. import delimited "https://ourworldindata.org/grapher/gdp-per-capita-worldbank.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=cha
> rt&country=LUX~IRL~SGP~QAT~BMU~ARE~CHE~
no; dataset in memory has changed since last saved
r(4);

