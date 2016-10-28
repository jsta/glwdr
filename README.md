
<!-- README.md is generated from README.Rmd. Please edit that file -->
R client for the Global Lakes and Wetlands Database (GLWD)
==========================================================

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

dt <- dt[dt$COUNTRY == "United States" & dt$LAT_DEG < 56,] 
 
map("state")

plot(dt, add = TRUE, col = "blue")
```

![](README_files/figure-markdown_github/unnamed-chunk-5-1.png)

``` r
dt@data[1:5,]
```

    ##     GLWD_ID      TYPE                LAKE_NAME DAM_NAME POLY_SRC AREA_SKM
    ## 5         6      Lake            Lake Michigan     <NA> ArcWorld  57399.4
    ## 25       26      Lake          Great Salt Lake     <NA>      DCW   5965.8
    ## 109     110 Reservoir Lakes Sakakawea, Audubon Garrison      DCW   1492.0
    ## 113     114      Lake          Lake Okeechobee     <NA>      DCW   1436.8
    ## 121     122 Reservoir                Lake Oahe     Oahe      DCW   1347.8
    ##     PERIM_KM LONG_DEG LAT_DEG ELEV_M CATCH_TSKM INFLOW_CMS VOLUME_CKM
    ## 5     2244.7   -87.09   43.86    176      173.4      927.3         NA
    ## 25     920.7  -112.50   41.20   1275       43.9       27.7         NA
    ## 109   1174.7  -102.32   47.81    571      467.5      740.1      22.82
    ## 113    247.4   -80.86   26.95      4       13.5        3.7         NA
    ## 121   1359.1  -100.38   45.49    499      617.5      798.1      23.81
    ##     VOL_SRC       COUNTRY SEC_CNTRY    RIVER  NEAR_CITY MGLD_TYPE
    ## 5      <NA> United States      <NA>     <NA>       <NA>      open
    ## 25     <NA> United States      <NA>     <NA>       <NA>   closedx
    ## 109   ICOLD United States      <NA> Missouri River Dale      open
    ## 113    <NA> United States      <NA>     <NA>       <NA>      open
    ## 121   ICOLD United States      <NA> Missouri     Pierre      <NA>
    ##     MGLD_AREA LRS_AREA LRS_AR_SRC LRS_CATCH DAM_HEIGHT DAM_YEAR USE_1
    ## 5       58000       NA       <NA>        NA         NA       NA  <NA>
    ## 25       6000       NA       <NA>        NA         NA       NA  <NA>
    ## 109       700      538      ICOLD    468632         62     1956     c
    ## 113      1000       NA       <NA>        NA         NA       NA  <NA>
    ## 121        NA     1522      ICOLD    630636         75     1958     c
    ##     USE_2 USE_3
    ## 5    <NA>  <NA>
    ## 25   <NA>  <NA>
    ## 109     h     i
    ## 113  <NA>  <NA>
    ## 121     h     i

References
----------

Lehner, B., Döll, P.: Development and validation of a global database of lakes, reservoirs and wetlands, Journal of Hydrology, Volume 296, Issues 1–4, 20 August 2004, Pages 1-22, <http://dx.doi.org/10.1016/j.jhydrol.2004.03.028>.
