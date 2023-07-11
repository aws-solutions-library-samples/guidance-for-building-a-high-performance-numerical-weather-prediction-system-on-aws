# load the Intel compilers and MPI package
spack load intel-oneapi-compilers
spack load intel-oneapi-mpi
# set dependency paths from spack environment
export HDF5=$SPACK_ENV/.spack-env/view/
export JASPERINC=$SPACK_ENV/.spack-env/view/include
export JASPERLIB=$SPACK_ENV/.spack-env/view/lib64
export NETCDF=$SPACK_ENV/.spack-env/view/
export PNETCDF=$SPACK_ENV/.spack-env/view/
# download source from Github
wget https://github.com/wrf-model/WRF/archive/refs/tags/v4.3.3.tar.gz
tar -xzf v4.3.3.tar.gz
# configure
cd WRF-4.3.3
./configure
