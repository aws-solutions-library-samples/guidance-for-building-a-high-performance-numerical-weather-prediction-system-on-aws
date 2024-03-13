# Install Weather Research and Forecasting (WRF)
echo 'installing WRF using...'
# spack install -j $(nproc) wrf@4.5.2%intel build_type=dm+sm ^intel-oneapi-mpi+external-libfabric
spack install -j $(nproc) wrf build_type=dm+sm
# For generic version use 'spack install wrf'
echo '.. finished installing WRF..'
