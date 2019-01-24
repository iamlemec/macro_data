///////////////////////////////////
// STEP 1: Plot some US GDP data //
///////////////////////////////////

// load in the data
import excel using "data/GDPCA.xls" , firstrow

// extract just the year (so ignore the exact date)
replace Year = year(Year)

// plot the GDP series
line GDP Year

// clear all existing data
clear

///////////////////////////////////////////
// STEP 2: Load in Maddison Project data //
///////////////////////////////////////////

// load in the data
import excel using "data/mpd2018_region_data.xlsx" , sheet(Long data) firstrow

// we don't need some variables
drop region_name rgdpnapc pop

// reshape data to a wide format (rows=i=years by cols=j=regions)
reshape wide cgdppc , i(year) j(region) string

// plot all the regions
line cgdppc* year , yscale(log)
