# Install Weather Research and Forecasting (WRF)
echo 'installing WRF using Intel Compiler and Intel MPI..'
spack install -j $(nproc) wrf@4.3.3%intel build_type=dm+sm ^intel-oneapi-mpi+external-libfabric
echo '.. finished installing WRF using Intel Compiler and Intel MPI'
