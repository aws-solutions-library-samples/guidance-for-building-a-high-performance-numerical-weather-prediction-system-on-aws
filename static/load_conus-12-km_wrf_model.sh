echo 'Retrieving CONUS 12-km model'
cd /fsx
curl -O https://www2.mmm.ucar.edu/wrf/OnLineTutorial/wrf_cloud/wrf_simulation_CONUS12km.tar.gz
tar -xzf wrf_simulation_CONUS12km.tar.gz
echo '.. CONUS 12-km model retrieved'
sleep 10
echo 'Preparing data for a run - copying relevant files from WRF install'
cd /fsx/conus_12km/
WRF_ROOT=$(spack location -i wrf)/test/em_real/
ln -s $WRF_ROOT* .
echo '.. data for a WRF run is copied OK'
