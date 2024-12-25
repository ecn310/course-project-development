## Development Reproduciblity Package 
Step-by-step on how to produce and attain the data before the analysis. To conduct the study, you can look at the Development.do file code.   

_**Part 1: Accessing data on the platform**_
1. You can obtain the data sets by opening a web browser, navigating to the [Our World in Data](https://ourworldindata.org/data) website, clicking on the "Resources" section in the top menu bar, and choosing the "Data Catalogue" option from the drop-down menu.
2. Look up the first variable, "Manufacturing jobs as a share of total employment," Bank World Development Indicators Data Bank page.
3. Once the variable has been selected, choose the chart view, deselect all the pre-opted categories, and choose the "GDP per capita" filter in the "sort by" field. We have taken that any country with a GDP per Capita equal to or greater than 20,000 USD will be considered a developed country and below as developing.
4. Once the data is categorized, manually select all countries equal to and above the 20,000 USD threshold. Do not select categories that may be whole continents or grouped country regions.

_**Part 2: Accessing the Data sets**_

1. Once the data has been aggregated onto the chart and the table on the right-hand side, there is a download icon in the menu bar at the bottom of the chart display. Click on that to get a mini pop-up screen.
2. On the screen, choose the "data" option instead of "Visualization." This will give you a drop-down menu with many sections and subheadings, the main of which is "Data API."
3. Under "Data API," select "Download only the currently selected data visible in the chart." it is a default setting, but make sure "shortened column names" are chosen. 
4. and copy the "Data URL (CSV format)."
5. Once you have chosen these options, go to "Quick Download" and select "Download displayed data."
6. Since the second "GDP per capita" data were on the same site, it was logical to follow the same steps (specifically from step 2) implemented to obtain the data for variable one.

- Code examples are provided at the bottom of the download pop-up that is useful for importing that data, depending on the language used. We followed the last example, processing our data using Stata. The replication package has more code.
- It would be helpful to keep all the CVS links in one place on GitHub (where we are working) so that they are easy to access when analyzing the data. We have saved ours in the Issue called ["Re-tracking"](https://github.com/ecn310/course-project-development/issues/15#issuecomment-2486305999)
  
_**Data Analysis:**_

1. Once all the links have been attained, in this case, only two are required for each variable. There should be four links in total.
2. The primary analysis used the do-file named [Development.do](https://github.com/ecn310/course-project-development/blob/main/Reproducibility%20Package/Development.do). This do.file has the code to clear, and merge the developed and developing data sets in the respective categories. For example, merging developing Manufacturing variables with GDP per capita (the critical part is not to mix up the URLs). 
4. We then used the same code in [Development.do](https://github.com/ecn310/course-project-development/blob/main/Reproducibility%20Package/Development.do) for graphing and getting a scatterplot at the end. If it is confusing to look at everything in one place, the graphing and correlation analysis can be found in the do-file named [gdp_developed_analysis.do](https://github.com/ecn310/course-project-development/blob/main/Reproducibility%20Package/gdp_developed_analysis.do). 
