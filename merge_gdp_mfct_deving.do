import delimited "https://ourworldindata.org/grapher/gdp-per-capita-worldbank.csv?v=1&csvType=full&useColumnShortNames=true", encoding("utf-8") clear
rename ny_gdp_pcap_pp_kd gdp_Developing
sort entity year
save "developingGDPpc.dta", replace
import delimited "https://ourworldindata.org/grapher/manufacturing-share-of-total-employment.csv?v=1&csvType=filtered&useColumnShortNames=true&tab=chart&country=DOM~BLR~CHN~THA~MKD~GEO~BIH~ARM~COL~BWA~IRN~BRB~LCA~AZE~BRA~SUR~GRD~PLW~PRY~ZAF~MDA~LBN~EGY~PER~OWID_KOS~IDN~FJI~LKA~MNG~BTN~DMA~VNM~DZA~NRU~ECU~UKR~TUN~JAM~NAM~JOR~BLZ~SLV~IRQ~GTM~SWZ~PHL~BOL~MAR~UZB~LAO~CPV~IND~BGD~TON~MHL~AGO~NIC~PSE~HND~CIV~GHA~PAK~MRT~WSM~KGZ~DJI~NGA~KEN~TUV~KHM~MMR~NPL~TJK~TLS~PNG~CMR~COG~SDN~SEN~STP~BEN~ZMB~COM~HTI~FSM~VUT~GIN~TZA~ETH~RWA~UGA~SLB~LSO~ZWE~TGO~BFA~MLI~GMB~KIR~GNB~SLE~AFG~MDG~MWI~LBR~SOM~TCD~NER~MOZ~COD~BDI", clear
rename _9_2_2__sl_tlf_manf Mft_sh_Developing
sort entity year
save "developingManufacturing.dta", replace
use "developingManufacturing.dta", clear
merge 1:1 entity year using developingGDPpc.dta
save "developingmergedgdp_mftc.dta", replace