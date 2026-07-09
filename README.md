
# Interactive Graphics for PCA in MATLAB
**Marco Riani**<sup>1</sup>*, **Anthony C. Atkinson**<sup>2</sup>, **Aldo Corbellini**<sup>1</sup>* , **Domenico Perrotta**<sup>3</sup>*, **Francesca Torti**<sup>3</sup>* and **Gianluca Morelli**<sup>1</sup>

<sup>1</sup> Department of Economics and Management and Interdepartmental Research Centre for Robust Statistics

<sup>2</sup> London School of Economics

<sup>3</sup> EC Joint Research Centre (JRC)


<table>
  <tr>
    <td><img src="brush2.jpg" width="1024" height="392"></td>
  </tr>
</table>

# Abstract
Principal Component Analysis (PCA) is a fundamental tool for dimension
reduction and exploratory analysis of multivariate data, yet standard
implementations often provide limited support for interactive
visualization, robust inference, and integrated outlier detection. In
this paper we present a comprehensive set of MATLAB routines within the
FSDA (Flexible Statistics and Data Analysis) toolbox that extend
classical PCA through interactive and dynamic graphical methods, with
particular emphasis on biplots, robustness, and linked visualizations.
The proposed tools allow users to explore PCA results in two and three
dimensions, dynamically adjust biplot scaling parameters, visualize
confidence regions, and assess the impact of outliers using hard-trimming
approaches such as the Minimum Covariance Determinant and the Forward
Search. Brushing and linking techniques connect PCA representations with
scatter plot matrices and geographical maps, enabling substantive
interpretation of complex data structures. The methodology is illustrated
through an analysis of quality-of-life indicators for Italian provinces,
showing how interactive graphics reveal latent structure, geographical
patterns, and atypical observations that are difficult to detect using
static plots alone. The paper demonstrates how modern interactive
visualization substantially enhances the interpretability and robustness
of PCA analyses. 


---

In the table below you can find  the original source (MATLAB live script): .mlx file and the corresponding .ipynb file. 

**MATLAB live script files**

The .mlx file 
contain both the code and the output that the code produces.

:eyes: To view the .mlx files click  on the "File Exchange button"

▶️ To run the .mlx files in the free MATLAB on line click on "Run in MATLAB Online". The repo will be automatically cloned. 

The Jupiter notebook version of the files is also given in the last column of the table below. Similarly to the .mlx files the Jupiter notebook files also contain both the code and the output produced by the code.

**Jupiter notebook files**

To view the .ipynb files click on the corresponding link.

To run the .ipynb files inside the agnostic environment jupiter notebook follow the instructions in the file
[ipynbRunInstructions.md](https://github.com/UniprJRC/MonitoringBook/blob/main/ipynbRunInstructions.md). 

Note: in order to run the files below you need to have [FSDA toolbox](https://https://www.mathworks.com/matlabcentral/fileexchange/72999-fsda-flexible-statistics-data-analysis-toolbox) installed. File `citiesItaly2024` is inside the FSDA toolbox. In order to visualize the maps the geomapping toolbox is also needed.
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

| FileName | Run ▶️ | Jupiter notebook | m format |
| -------- | ----- | ---------------- | -------- |
| `codeFig1.mlx`: Code to create a Scatter Plot Matrix (SPM) of the 'citiesItaly2024' dataset using the FSDA function spmplot. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig1.mlx) | [codeFig1.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig1.ipynb) | [codeFig1.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig1.m) |
| `codeFig2to8.mlx`: This code generates Figures from 2 to 8. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig2to8.mlx) | [codeFig2to8.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig2to8.ipynb) | [codeFig2to8.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig2to8.m) |
| `codeFig9to15.mlx`: This code generates Figures from 9 to 15. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig9to15.mlx) | [codeFig9to15.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig9to15.ipynb) | [codeFig9to15.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig9to15.m) |
| `codeFig16.mlx`: This code creates Figure from 16. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig16.mlx) | [codeFig16.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig16.ipynb) | [codeFig16.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig16.m) |
| `codeFig17to18.mlx`: This code generates Figures from 17 to 18. | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/PCAinteractive&file=codeFig17to18.mlx) | [codeFig17to18.ipynb](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig17to18.ipynb) | [codeFig17to18.m](https://github.com/UniprJRC/PCAinteractive/blob/main/codeFig17to18.m) |

---


![GitHub top language](https://img.shields.io/github/languages/top/UniprJRC/boot-TCLUST)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/UniprJRC/boot-TCLUST)
[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/183001-pcainteractive)


[![GitHub contributors](https://img.shields.io/github/contributors/UniprJRC/boot-TCLUST)](https://github.com/UniprJRC/2025tobit/graphs/contributors)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/UniprJRC/boot-TCLUST/graphs/commit-activity)
![master](https://img.shields.io/github/last-commit/badges/shields/master)



