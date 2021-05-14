# Temperature Prediction Visualization


## Project Setup
- Clone the project to your local system
- `cd` to the cloned directory
- Download the Node Package Manager(NPM) dependencies by running `npm install` in your terminal window
- Start the project by running `npm run serve` -- the address of the project will show on completion usually `localhost:8080`
- Start your browser, enter the address found above
- And that's it, easy peasie

### Notes on Setup
- You will need 'node.js' installed on your system
- If you run into trouble starting the project, it is usually fixed by running `npm rebuild node-sass`
- The Windows operating system does not like our environment variables and messes up the local build.

To fix that, do the following: 
- Open the 'package.json' at the root of the project
- Go to the 'scripts' name value pair
- Go to the 'serve' name value pair
- Delete `NODE_ENV=development` from that value
- That value should now look like `"serve": "vue-cli-service serve --mode test_tier",`
- Run `npm run serve` again, and the project should start
On Windows -
You might get this error when running ``npm run serve``

``'vue-cli-service' is not recognized as an internal or external command,
  operable program or batch file.``
  
- To fix, run ``npm install @vue/cli-service -g`` to install the Vue CLI-Service globally.

## Stream temperature observations
Observations of stream temperature - `preprocess-data/input_data/obs_temp_drb.rds` - were pulled from the [USGS National Water Information System (NWIS)](https://waterdata.usgs.gov/nwis), the [Water Quality Portal](https://www.waterqualitydata.us/) and [EcoSHEDS](http://db.ecosheds.org/). The code to pull and process that data is stored in [this repository](https://github.com/USGS-R/2wp-temp-observations) and [this repository](https://github.com/USGS-R/delaware-model-prep). Additional final processing for this visualization is done in the `preprocess-data/temp_obs_data_prep.R` script.

## Preprocessing data in JupyterLab
The raw shapefiles and temperature observations were processed in a Jupyter notebook and then exported to `public/data`.

To build the `temp_prediction` python environment,
Open an Anaconda Command Prompt on Windows or a terminal window on OSX and navigate to the `preprocess-data` subfolder from the root `temperature-prediction` directory

`cd preprocess-data`

and enter:
`conda env create -f temp_prediction_env.yml`

Building the environment may take a while.

After the environment is built, activate the environment:
`activate temp_prediction`

And then launch JupyterLab:
`jupyter lab`

The `Temperature_Prediction_data.ipynb` notebook should automatically open

## Preprocessing SVGs

A trick we've learned over the years is to preprocess SVGs to save on loading time and then add interaction with D3 later. In this viz, we prebuilt the matrix showing the number of observations available per segment through time and the line chart showing temperatures throughout 2019 for each segment. Below is the code you can run to prebuild them yourself. 

```r
# Creates the SVG, `src/assets/prebuilt_c1p2_linechart.svg`
# This uses the data in `public/data/matrix_annual_obs.csv`
source("svgify-charts/prebuild_c1p2_matrix.R")

# Creates the SVG, `src/assets/prebuilt_c1p3_linechart.svg`
# This uses the data in `public/data/matrix_daily_2019_obs.csv`
source("svgify-charts/prebuild_c1p3_linechart.R")
```
