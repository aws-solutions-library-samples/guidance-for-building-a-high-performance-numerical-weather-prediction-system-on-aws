---
title: Unified Forecast System (FV3GFS)
weight: 50
--- 

In this section of the lab we'll setup the [Unified Forecast System (UFS)](https://ufscommunity.org/) atmospheric model FV3GFS. The UFS is a community-based, coupled, comprehensive Earth modeling system. The UFS numerical applications span local to global domains and predictive time scales from sub-hourly analyses to seasonal predictions. It is designed to support the [Weather Enterprise](https://www.weather.gov/about/weather-enterprise) and to be the source system for [NOAA](https://www.noaa.gov/)‘s operational numerical weather prediction applications.

The component models currently used in the UFS are the Global Forecast System 15 (GFSv15) atmosphere, the Modular Ocean Model 6 (MOM6), the WAVEWATCH III wave model, the Los Alamos sea ice model 5 (CICE5), the Noah and Noah-MP land models, the Goddard Chemistry Aerosol Radiation and Transport (GOCART) aerosol model, the Ionosphere-Plasmasphere Electrodynamics (IPE) model, as well as the Advanced Circulation (ADCIRC) model for storm surge, tides, and coastal circulation.

It’s easy to install with the package manager Spack.

To do so we’ve broken it down into the following steps:

* Install UFS with Spack
* Download the simple test case
* Run the test case
* Visualize results
