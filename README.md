
<!-- README.md is generated from README.Rmd. Please edit that file -->
R client for the Global Lakes and Wetlands Database (GLWD)
==========================================================

Installation
------------

``` r
devtools::install_github("jsta/glwdr")
```

Usage
-----

### Level 1

``` r
library(glwdr)

glwd_get(level = 1)

dt <- glwd_load(level = 1)

dt@data[1:5,]
```

    ## OGR data source with driver: ESRI Shapefile 
    ## Source: "/home/jose/.local/share/glwdr/glwd_1.shp", layer: "glwd_1"
    ## with 3721 features
    ## It has 28 fields

    ##   GLWD_ID TYPE     LAKE_NAME                   DAM_NAME POLY_SRC AREA_SKM
    ## 0       1 Lake   Caspian Sea                       <NA> ArcWorld 378119.3
    ## 1       2 Lake Lake Superior                       <NA> ArcWorld  81935.7
    ## 2       3 Lake Lake Victoria Owen Falls (Lake Victoria)      DCW  67075.2
    ## 3       4 Lake      Aral Sea                       <NA> ArcWorld  65966.8
    ## 4       5 Lake    Lake Huron                       <NA> ArcWorld  59756.5
    ##   PERIM_KM LONG_DEG LAT_DEG ELEV_M CATCH_TSKM INFLOW_CMS VOLUME_CKM
    ## 0   6820.3    50.36   41.85    -22     3174.0     8644.8         NA
    ## 1   3469.6   -88.23   47.72    184      203.2     2115.8         NA
    ## 2   6041.4    33.23   -1.30   1140      257.9     1201.7      204.8
    ## 3   3580.4    60.08   45.13     42      255.5       27.4         NA
    ## 4   3943.9   -82.21   44.78    176      486.8     4069.9         NA
    ##   VOL_SRC    COUNTRY                                  SEC_CNTRY RIVER
    ## 0    <NA> Kazakhstan +4: Russia, Turkmenistan, Azerbaijan, Iran  <NA>
    ## 1    <NA>     Canada                              United States  <NA>
    ## 2     LRs   Tanzania                          +2: Uganda, Kenya  Nile
    ## 3    <NA> Kazakhstan                                 Uzbekistan  <NA>
    ## 4    <NA>     Canada                              United States  <NA>
    ##   NEAR_CITY MGLD_TYPE MGLD_AREA LRS_AREA LRS_AR_SRC LRS_CATCH DAM_HEIGHT
    ## 0      <NA>   closedx    380000       NA       <NA>        NA         NA
    ## 1      <NA>      open     82000       NA       <NA>        NA         NA
    ## 2     Jinta      open     68800    69000      Other         0         31
    ## 3      <NA>   closedx     40000       NA       <NA>        NA         NA
    ## 4      <NA>      open     59500       NA       <NA>        NA         NA
    ##   DAM_YEAR USE_1 USE_2 USE_3
    ## 0       NA  <NA>  <NA>  <NA>
    ## 1       NA  <NA>  <NA>  <NA>
    ## 2     1954     i     h  <NA>
    ## 3       NA  <NA>  <NA>  <NA>
    ## 4       NA  <NA>  <NA>  <NA>

References
----------

<http://wp.geog.mcgill.ca/hydrolab/glwd/>

Lehner, B., Döll, P.: Development and validation of a global database of lakes, reservoirs and wetlands, Journal of Hydrology, Volume 296, Issues 1–4, 20 August 2004, Pages 1-22, <http://dx.doi.org/10.1016/j.jhydrol.2004.03.028>.
