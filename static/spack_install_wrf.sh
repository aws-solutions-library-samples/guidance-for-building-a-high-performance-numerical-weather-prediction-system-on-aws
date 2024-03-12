# Install Weather Research and Forecasting (WRF)
echo 'installing WRF using Intel Compiler and Intel MPI..'
spack install -j $(nproc) wrf@4.5.2%intel build_type=dm+sm ^intel-oneapi-mpi+external-libfabric
# For generic version use 'spack install wrf'
echo '.. finished installing WRF using Intel Compiler and Intel MPI'
