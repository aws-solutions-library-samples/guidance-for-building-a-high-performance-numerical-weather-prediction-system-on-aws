# install NCAR command language (NCL)
spack install ncl^hdf5@1.8.22
echo 'Spack NCL package installed'
# now load the NCL module and check it loads
spack load ncl
ncl -h
spack unload ncl
