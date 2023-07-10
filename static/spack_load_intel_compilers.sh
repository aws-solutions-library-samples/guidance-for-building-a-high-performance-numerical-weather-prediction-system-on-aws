# Load and find required compiler for SPACK
spack load intel-oneapi-compilers
spack compiler find
spack unload
# install libfabric with EFA support
spack install libfabric@1.16.1 fabrics=efa,tcp,udp,sockets,verbs,shm,mrail,rxd,rxm %intel
