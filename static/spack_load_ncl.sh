cd /fsx/conus_12km
echo 'loading Surface Temperature Model... '
spack load ncl
spack load intel-oneapi-compilers
ncl ncl_scripts/surface.ncl
echo '...Surface Temperature Model loaded'
