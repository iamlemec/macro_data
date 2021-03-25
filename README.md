## Getting Set Up

To use Jupyter (Python) notebooks in the cloud, your options are:
- [Google Colab](https://colab.research.google.com/): this is pretty robust and has been around for a while. It's integrated with Google Drive and has the option of upgrading to better hardware.
- [Kaggle Kernels](https://www.kaggle.com/kernels): similar to Google Colab, and allows you to pull in pre-arranged data sources.
- [Deepnote](https://deepnote.com): this is relatively new but has a very slick interface. Seems to work well from my limited testing, and it's easy to upload arbitrary files.

Alternatively, if you'd like to install Python and Jupyter on your computer, you can either use "pure" Python or the slightly more user-friendly Anaconda. To get pure Python go to: https://www.python.org/downloads. To get Anaconda, download Miniconda at: https://docs.conda.io/en/latest/miniconda.html.

You can get Stata from the Pitt software download service, and installation should be relatively painless.

## Notebooks

For now we have three mini lessons, each implemented in Python/Jupyter (`.ipynb`) and Stata (`.do`):
- `1_Introduction`: loading in, reshaping, and plotting single data series and panel data.
- `2_Analysis`: panel data with multiple series, as well as advanced visualization.
- `3_Merging_Data`: merging together two different datasets by country and year.

## Data

Your best bet for many types of data is [FRED](https://fred.stlouisfed.org/). Check it out! Here's what's in the `data` directory:
- `GDPCA.xls`: Annual Real GDP for the US (FRED)
- `mpd2018.xlsx`: Maddison Project full country data
- `mpd2018_region_data.xlsx`: Maddison Project regional data
- `pwt90.xlsx`: Penn World Tables (9.0) full country data
- `world_bank_gini.xls`: World Bank inequality data (Gini coefficient)
