#add the mirror and trust the GPG keys that have signed the packages
spack mirror add aws-hpc-weather s3://aws-hpc-weather/spack_v0.19.1/
spack buildcache keys --install --trust --force
