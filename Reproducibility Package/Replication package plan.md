## Development Reproduciblity Package 
Step-by-step on how to produce and attain the data before the analysis. To conduct the analysis you can loook at the Merge_GDP_Mftc.do.  

_**Part 1: Accessing data on the platform**_
1. You can obtain the data sets by opening the web browser, navigating to the [Our World in Data](https://ourworldindata.org/data) website, and click on the "Resources" section that is in the top menu bar and choose the "Data Catalogue" option from the drop-down.
2. Look up the first variable, "Manufacturing jobs as a share of total employment," Bank World Development Indicators Data Bank page.
3. Once the variable has been selected, choose the chart view, deselect all the pre-opted categories, and choose the "GDP per capita" filter in the "sort by" field. We have taken that any country with a GDP per Capita equal to or greater than 20,000 USD will be considered a developed country and below as developing.
4. Once the data is categorized, manually select all countries equal to and above the 20,000 USD threshold. Do not select categories that may be whole continents or grouped country regions.

_**Part 2: Downloading the Data sets**_

1. Once the data has been aggregated onto the chart and the table on the right-hand side, there is a download icon in the menu bar at the bottom of the chart display. Click on that to get a mini pop-up screen.
2. On the screen, choose the "data" option instead of "Visualization." This will give you a drop-down menu with many sections and subheadings. The main one is "Data API."
3. Under "Data API," select "Download only the currently selected data visible in the chart"
4. and copy the "Data URL (CSV format)".
5. Once these options are chosen go to the "Quick Download" and select "Download displayed data". 
6. For further reference in the next step, code examples are provided at the bottom of the download pop-up that is useful for importing that data, depending on the language used. We followed the last example, processing our data using Stata. The replication package has more code.
7. Since the second "GDP per capita" data were on the same site, it was logical to follow the same steps (specifically from step 2) implemented to obtain the data for variable one.

_**Data Analysis:**_

1. In the developed and developing categories sections, We merged the "Manufacturing in the Share of Employment" with "GDP per Capita" data. All the code was in our main.do file.
2. We then used the "development.do" file to complete the analysis. 
