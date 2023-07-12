#This script should visualize WRF job to run CONUS-12 model using local data
cd /fsx/conus_12km
# use previously installed NCL plug-in
spack load ncl
spack load intel-oneapi-compilers
ncl ncl_scripts/surface.ncl
