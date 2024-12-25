## Development Reproduciblity Package 
Due to the accessible data, we used the Data URLs to avoid downloading zip files. To clarify, our data is collected by copying the CSV links from the Our World in Data page (they are not files). For reproducing the results, here is a step-by-step set of instructions on producing and attaining the data before the analysis. To keep track of the links, we placed them in the issue named ["Re-tracking"](https://github.com/ecn310/course-project-development/issues/15#issuecomment-2486305999) and [Development.do](https://github.com/ecn310/course-project-development/blob/main/Reproducibility%20Package/Development.do) to conduct the study using the web links.

_**Part 1: Accessing data on the platform**_
1. We obtained the data sets by opening a web browser, navigating to the [Our World in Data](https://ourworldindata.org/data) website, clicking on the "Resources" section in the top menu bar, and choosing the "Data Catalogue" option from the drop-down menu.
2. Look up the first variable, "Manufacturing jobs as a share of total employment," in the search board where your cursor is already placed. If not, the bar is below the title "Data Catalog."
3. Select the one indicator visible. 
4. Once the variable has been selected, there are three options on the top left - choose the chart view.

_**Part 2: Accessing the Data sets**_

1. On the page's right - under ADD/REMOVE COUNTRIES AND REGIONS, deselect all the pre-opted countries and continents, and choose the "GDP per capita" filter in the "sort by" field. We have taken that any country with a GDP per Capita equal to or greater than 20,000 USD will be considered a developed country and below as developing.
2. Once the data is categorized, manually select all countries equal to and above the 20,000 USD threshold to get the developed dataset. Do not select categories that may be whole continents or grouped country regions.
3. Once the data has been aggregated onto the chart and the table on the right-hand side, there is a download icon in the menu bar at the bottom of the chart display. Click on that to get a mini pop-up screen.
4. On the screen, choose the "data" option instead of "Visualization." This will give you a drop-down menu with many sections and subheadings, the main of which is "Data API."
5. Under "Data API," select "Download only the currently selected data visible in the chart." it is a default setting, but make sure "shortened column names" are chosen.
6. Copy the "Data URL (CSV format)" under "Data API."
7. Do not go to "Quick Download" and select "Download displayed data," this will cause the data to be downloaded as a zip file. It is better to clean it with a line of code accessible in the [Development.do](https://github.com/ecn310/course-project-development/blob/main/Reproducibility%20Package/Development.do)
8. We retrieved the Data URLs thrice.
   - One more time for the same Manufacturing indicator - but developing countries (below the 20,000 USD threshold). 
10. For the second data indicator, repeat steps from Part 1 and Step 2 = search for the GDP per capita indicator (two more links - developed and developing).
    - Code examples are provided at the bottom of the download pop-up that is useful for importing that data, depending on the language used. We followed the last example, processing our data using Stata. The replication package has more code.
  
_**Data Analysis:**_

1. Once all the links have been attained, in this case, only two are required for each variable. There should be four links in total.
2. The primary analysis code is in the Development.do file linked above. This do.file has the code to clear and merge the developed and developing data sets in the respective categories. For example, merging developing Manufacturing variables with GDP per capita (the critical part is not to mix up the URLs).
3. We then used the same code in [Development.do](https://github.com/ecn310/course-project-development/blob/main/Reproducibility%20Package/Development.do) for graphing and getting a scatterplot at the end. If it is confusing to look at everything in one place, the graphing and correlation analysis can be found in the do-file named [gdp_developed_analysis.do](https://github.com/ecn310/course-project-development/blob/main/Reproducibility%20Package/gdp_developed_analysis.do). 
