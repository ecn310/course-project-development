## Development Reproduciblity Package 
Steps Taken to Produce Development Results 
Accessing 
1. You can obtain the data sets by opening the web browser, navigating to the [Our World in Data](https://github.com/ecn310/course-project-development/issues/12) website, and click on the "Resources" section.
2. Look up the first variable, "Manufacturing jobs as a share of total employment," Bank World Development Indicators Data Bank page. Once the variable has been selected, choose the chart view, deselect all the pre-opted categories, and choose the "GDP per capita" filter in the "sort by" field. For our purposes, we have taken that any country with a GDP per Capita equal to or greater than 20,000 USD will be considered a developed country and below as developing.
3. Once the data is categorized, manually select all countries. Then, click the download option in the bottom right corner and click the "Data" option before downloading the data set completely.
4. Under "Quick download," select "Download displayed data"
5. Under "Data API," copy the "Data URL (CSV format)"
6. For further reference in the next step, code examples are provided at the bottom of the download pop-up that are useful for importing that data, depending on the language used. We followed the last example, processing our data using Stata. The replication package has more code.
7. Since the second "GDP per capita" data were on the same site, it was logical to follow the same steps implemented to obtain the data for variable one.

Data Analysis: 
1. In the developed and developing categories sections, We merged the "Manufacturing in the Share of Employment" with "GDP per Capita" data. All the code was in our main.do file.
2. We then used the "development.do" file to complete the analysis. 
