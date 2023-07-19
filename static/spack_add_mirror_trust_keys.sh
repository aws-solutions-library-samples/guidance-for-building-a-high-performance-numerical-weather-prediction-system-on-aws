 # add SPACK mirror
 spack mirror add aws-hpc-weather s3://aws-hpc-weather/spack_v0.19.1/
 # trust the GPG keys
 spack buildcache keys --install --trust --force
