/////////////////////////////////////////////
// STEP 1: Plot full Maddison Project data //
/////////////////////////////////////////////

// load in the data
import excel using "data/mpd2018.xlsx" , sheet(Full data) firstrow

// drop if we have no country code
drop if missing(countrycode)

// calculate log GDP per capita
gen lcgdppc = log(cgdppc)

// drop unneeeded variables
drop country cgdppc rgdpnapc i_cig i_bm

// reshape data to wide format
reshape wide lcgdppc pop , i(year) j(countrycode) string

// plot GDP per capita for sample countries
line lcgdppcUSA lcgdppcCHN lcgdppcJPN year if year >= 1950

// calculate population growth
foreach v of varlist pop* {
    gen l`v' = log(`v')
    gen g`v' = 100*(l`v' - l`v'[_n-1])
}

// go back to long form data
drop pop* lpop*
reshape long lcgdppc gpop , i(year) j(countrycode) string

// do a scatter plot of these two
scatter gpop lcgdppc if gpop > -3 & gpop < 6

//////////////////////////////////////////////
// STEP 2: Load full Penn World Tables data //
//////////////////////////////////////////////

// load in PWT data
import excel using "data/pwt90.xlsx", sheet(Data) firstrow

// keep only variables of interest (opposite of drop)
keep countrycode year rgdpna avh

// reshape to wide for for GDP and hours worked
reshape wide rgdpna avh , i(year) j(countrycode) string

// plot hours worked for a sample of countries
line avhUSA avhFRA avhKOR avhBRA year

// calculate the average hours across countries by year (need to sort first)
sort year
by year: egen mean_avh = mean(avh)

// plot this newly generated data
line mean_avh year if countrycode == "USA"
