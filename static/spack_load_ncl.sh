cd /fsx/conus_12km
echo 'loading Surface Temperature Model... '
spack load ncl
spack load intel-oneapi-compilers
echo '...Surface Temperature Model loaded, visualizing results'
ncl ncl_scripts/surface.ncl

