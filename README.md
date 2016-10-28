
<!-- README.md is generated from README.Rmd. Please edit that file -->
R client for the Global Lakes and Wetlands Database (GLWD)
==========================================================

[![Project Status: WIP - Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)

Installation
------------

``` r
devtools::install_github("jsta/glwdr")
```

### Load Package

``` r
library(glwdr)
```

Usage
-----

### Level 1

``` r
glwd_get(level = 1)

dt <- glwd_load(level = 1)
```

``` r
library(maps)
library(sp)

dt <- dt[dt$COUNTRY == "United States" &
         dt$LAT_DEG < 56 &
         dt$AREA_SKM < 30000,] 
 
map("state")
plot(dt, add = TRUE, col = "blue")
axis(1); axis(2)
```

![](README_files/figure-markdown_github/unnamed-chunk-5-1.png)

``` r
dt@data[1:5,]
```

    ##     GLWD_ID      TYPE                  LAKE_NAME DAM_NAME POLY_SRC
    ## 25       26      Lake            Great Salt Lake     <NA>      DCW
    ## 109     110 Reservoir   Lakes Sakakawea, Audubon Garrison      DCW
    ## 113     114      Lake            Lake Okeechobee     <NA>      DCW
    ## 121     122 Reservoir                  Lake Oahe     Oahe      DCW
    ## 150     151      Lake Red Lake (Upper and Lower)     <NA>      DCW
    ##     AREA_SKM PERIM_KM LONG_DEG LAT_DEG ELEV_M CATCH_TSKM INFLOW_CMS
    ## 25    5965.8    920.7  -112.50   41.20   1275       43.9       27.7
    ## 109   1492.0   1174.7  -102.32   47.81    571      467.5      740.1
    ## 113   1436.8    247.4   -80.86   26.95      4       13.5        3.7
    ## 121   1347.8   1359.1  -100.38   45.49    499      617.5      798.1
    ## 150   1133.3    196.7   -95.08   48.04    358        3.6        5.0
    ##     VOLUME_CKM VOL_SRC       COUNTRY SEC_CNTRY    RIVER  NEAR_CITY
    ## 25          NA    <NA> United States      <NA>     <NA>       <NA>
    ## 109      22.82   ICOLD United States      <NA> Missouri River Dale
    ## 113         NA    <NA> United States      <NA>     <NA>       <NA>
    ## 121      23.81   ICOLD United States      <NA> Missouri     Pierre
    ## 150         NA    <NA> United States      <NA>     <NA>       <NA>
    ##     MGLD_TYPE MGLD_AREA LRS_AREA LRS_AR_SRC LRS_CATCH DAM_HEIGHT DAM_YEAR
    ## 25    closedx      6000       NA       <NA>        NA         NA       NA
    ## 109      open       700      538      ICOLD    468632         62     1956
    ## 113      open      1000       NA       <NA>        NA         NA       NA
    ## 121      <NA>        NA     1522      ICOLD    630636         75     1958
    ## 150      open      1000       NA       <NA>        NA         NA       NA
    ##     USE_1 USE_2 USE_3
    ## 25   <NA>  <NA>  <NA>
    ## 109     c     h     i
    ## 113  <NA>  <NA>  <NA>
    ## 121     c     h     i
    ## 150  <NA>  <NA>  <NA>

References
----------

Lehner, B., Döll, P.: Development and validation of a global database of lakes, reservoirs and wetlands, Journal of Hydrology, Volume 296, Issues 1–4, 20 August 2004, Pages 1-22, <http://dx.doi.org/10.1016/j.jhydrol.2004.03.028>.
