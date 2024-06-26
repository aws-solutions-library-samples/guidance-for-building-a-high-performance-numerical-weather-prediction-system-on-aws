#this script sets up SPACK environment and executable
export SPACK_ROOT=/fsx/spack
git clone -b v0.21.2 -c feature.manyFiles=true https://github.com/spack/spack $SPACK_ROOT
echo "export SPACK_ROOT=/fsx/spack" >> $HOME/.bashrc
echo "source \$SPACK_ROOT/share/spack/setup-env.sh" >> $HOME/.bashrc
source $HOME/.bashrc
spack --help
