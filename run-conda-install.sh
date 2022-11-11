
echo starttime=`date`

targetDIR=`pwd`
echo targetDIR=${targetDIR}

conda create  --yes -p ${targetDIR}
conda install --yes -p ${targetDIR} -c conda-forge \
        "earthengine-api" \
        "numpy" \
        "pandas" \
        "scipy" \
        "scikit-learn" \
        "sklearn-pandas" \
        "pyarrow" \
        "geopandas" \
        "geotiff" \
        "stac-geoparquet" \
        "pystac-client" > stdout.conda-install 2> stderr.conda-install

# conda update --yes -name base conda
echo finishtime=`date`