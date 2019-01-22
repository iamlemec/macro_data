## Getting Set Up

To use Jupyter (Python) notebooks in the cloud, your options are:
- [Microsoft Azure Notebooks](https://notebooks.azure.com/): there is an option to import directly from a GitHub repository, for which you can simply use this URL.
- [Google Colaboratory](https://colab.research.google.com/): this requires you to upload data manually, so it is somewhat less useful than the above.

If you'd like to install Python and Jupyter locally, I would suggest using the [Anaconda](https://www.anaconda.com/) distribution, which is quite stable and supports all major platforms. After installing it, run either the Jupyter Notebook or JupyterLab. Finally, download the files in the repository and open the desired notebook.

## Notebooks

For now we have two notebooks:
- `1_Introduction.ipynb`: this covers loading in, reshaping, and plotting single data series and panel data.
- `2_Analysis.ipynb`: this covers panel data with multiple series, as well as advanced visualization.

## Data

Your best bet for many types of data is [FRED](https://fred.stlouisfed.org/). Check it out! Here's what's in the `data` directory:
- `GDPCA.xls`: Annual Real GDP for the US (FRED)
- `mpd2018.xlsx`: Maddison Project full country data
- `mpd2018_region_data.xlsx`: Maddison Project regional data
- `pwt90.xlsx`: Penn World Tables (9.0) full country data
