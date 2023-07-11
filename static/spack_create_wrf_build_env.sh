# Create build environment and install the packages
spack env create wrf_build wrf_build.yaml
spack env activate -p wrf_build
spack install -j 16
