#add the mirror and trust the GPG keys that have signed the packages
spack mirror add v0.20.1 https://binaries.spack.io/v0.20.1
spack buildcache keys --install --trust
