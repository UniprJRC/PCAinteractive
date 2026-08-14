
In the table below you can find  the original source (MATLAB script): .m file and the corresponding .ipynb file. 

**MATLAB script files**

▶️ To run the .m files in the free MATLAB on line click on "Run in MATLAB Online". The repo will be automatically cloned. 

The Jupyter notebook version of the files, which contains both the code and the output produced by the code, is also given in the last column of the table below.

**Jupyter notebook files**

To view the .ipynb files click on the corresponding link.

To run the .ipynb files inside the agnostic environment Jupyter notebook follow the instructions in the file
[ipynbRunInstructions.md](https://github.com/UniprJRC/MonitoringBook/blob/main/ipynbRunInstructions.md). 

**Note: in order to run the files below you need to have [FSDA toolbox](https://www.mathworks.com/matlabcentral/fileexchange/72999-fsda-flexible-statistics-data-analysis-toolbox) installed.** File `citiesItaly2024` is inside the FSDA toolbox. In order to visualize the maps the geomapping toolbox is also needed.
Finally, for those who wish to have all the data in their own software a GeoJSON file named `citiesItaly2024.geojson` has been added to the repo. Clicking on this file on GitHub will render the map with the countours of 107 provinces of Italy. 
This file contains both the variables which have been used for PCA and  the shape contours of the provinces and their latitude and longitude. 
For R users we have also added a file named `readInteractivePCA.R`  which reads the GeoJSON file and produces in R format the 3 variables (data frames): 
- Xeco the dataset which contains the 12 quality of life variables  for the Italian provinces; 
- XLatLong the dataset which contains the latitude and longitude of the provinces;
- Xgeo the dataset which contains the geographic variables of the provinces. 




<!--
<style>
table th:first-of-type {
    width: 25%;
}
table th:nth-of-type(2) {
    width: 25%;
}
table th:nth-of-type(3) {
    width: 25%;
}
table th:nth-of-type(4) {
    width: 25%;
}
</style>
-->

| FileName | Run ▶️ | Jupyter notebook | m format |
| -------- | ----- | ---------------- | -------- |
| `codeFig1.m`: Code to create a Scatter Plot Matrix (SPM) of the 'citiesItaly2024' dataset using the FSDA function spmplot. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig1.m) | [codeFig1.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig1.ipynb) | [codeFig1.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig1.m) |
| `codeFig2to8.m`: This code generates Figures from 2 to 8. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig2to8.m) | [codeFig2to8.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig2to8.ipynb) | [codeFig2to8.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig2to8.m) |
| `codeFig9to15.m`: This code generates Figures from 9 to 15. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig9to15.m) | [codeFig9to15.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig9to15.ipynb) | [codeFig9to15.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig9to15.m) |
| `codeFig16.m`: This code creates Figure 16. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig16.m) | [codeFig16.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig16.ipynb) | [codeFig16.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig16.m) |
| `codeFig17to18.m`: This code generates Figures from 17 to 18. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig17to18.m) | [codeFig17to18.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig17to18.ipynb) | [codeFig17to18.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig17to18.m) |
| `codeFigAppendixA1A4.m`: This code generates Figures in the Appendix. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=`codeFigAppendixA1A4.m) | [codeFigAppendixA1A4.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFigAppendixA1A4.ipynb) | [codeFigAppendixA1A4.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFigAppendixA1A4.m) |

---


![GitHub top language](https://img.shields.io/github/languages/top/UniprJRC/PCAinteractive)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/UniprJRC/PCAinteractive)
[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/183001-pcainteractive)


[![GitHub contributors](https://img.shields.io/github/contributors/UniprJRC/PCAinteractive)](https://github.com/UniprJRC/2025tobit/graphs/contributors)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/UniprJRC/PCAinteractive/graphs/commit-activity)
![master](https://img.shields.io/github/last-commit/badges/shields/master)



