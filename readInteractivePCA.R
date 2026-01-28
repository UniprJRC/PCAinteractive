# The following code will create 3 data frames
# economic (107x12) contains the 12 economic variables used in the study
# geographic (107x12) contains the geographic variables used in the study
# lat_long (107x2) contains 2 variables, the official latitudes and longitudes of the
# the 107 Italian provinces



# package sf will manage the GeoJSON file
library(sf)
library(ggplot2)

# 2. Read the GeoJSON file
mapdata <- st_read("citiesItaly2024.geojson")

# helper function: select columns (keeping sf), then drop geometry -> data.frame
selectdropgeom <- function(sf_obj, cols) {
  st_drop_geometry(sf_obj[, cols, drop = FALSE])
}

# 1. Select the 12 economic variables
economicvars <- c(
  "Deposit", "Bankrup", "UrbanFra", "Paym30D", "ElecPar", "QualLif",
  "Protest", "SalaryA", "SpendingA", "Employm", "AddedVa", "LowISEE"
)
Xeco <- selectdropgeom(mapdata, economicvars)

# 2. Select the Latitude and Longitude variables
latlongvars <- c("Lati", "Longi")
XLatLong <- selectdropgeom(mapdata, latlongvars)

# 3. Select the geographic variables
geographicvars <- c(
  "COD_RIP", "COD_REG", "COD_PROV", "COD_CM", "COD_UTS",
  "DEN_PROV", "DEN_CM", "DEN_UTS", "SIGLA", "TIPO_UTS",
  "Shape_Leng", "Shape_Area"
)
Xgeo <- selectdropgeom(mapdata, geographicvars)

