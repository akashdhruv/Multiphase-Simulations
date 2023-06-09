# Load GCC and python module
module load gcc/9.1.0
module load python/3.8-anaconda3

# Set MPI_HOME by quering path loaded by site module
export MPI_HOME=$(which mpicc | sed s/'\/bin\/mpicc'//)

# Load HDF5 module in desired configuration if available. If not specified
# the HDF5 will be built when setting up software
module load hdf5/1.10.7

# Path to parallel HDF5 installtion with fortran support
export HDF5_HOME=$(which h5pfc | sed s/'\/bin\/h5pfc'//)

# load git-lfs
module load git-lfs
