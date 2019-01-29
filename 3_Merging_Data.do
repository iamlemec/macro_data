//////////////////////////////////////////////
// STEP 1: Import World Bank inquality data //
//////////////////////////////////////////////

// load in World Bank inequality data
import excel using "data/world_bank_gini.xls" , firstrow

// save it as a Stata DTA file for later use (you need to create the stata directory)
save stata/world_bank_gini

// clear it from memory so we can do other stuff
clear

/////////////////////////////////////////////
// STEP 2: Load in PWT data and merge both //
/////////////////////////////////////////////

// load in PWT data
import excel using "data/pwt90.xlsx", sheet(Data) firstrow

// keep only a few variables
keep countrycode year rgdpna pop

// merge World Bank inequality data from file
merge 1:1 countrycode year using stata/world_bank_gini

/////////////////////////////////////////////
// STEP 2: Plot some interesting variables //
/////////////////////////////////////////////

// plot relationship between average income and inequality
gen lgdp_per = log(rgdpna/pop)
scatter gini lgdp_per

// we can also superimpose the regression line with confidence intervals
graph twoway (scatter gini lgdp_per) (lfitci gini lgdp_per)
