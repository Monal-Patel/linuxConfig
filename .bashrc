#######################################################################################
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# for environment-modules package
source /etc/profile.d/modules.sh
module use --append /home/monal/setup/modulefiles

alias python=/usr/bin/python2

# for CHAMPS
export CHAMPS_DIR=/home/monal/Documents/code/bitcart
export BITCART_SOURCE_PATH=$CHAMPS_DIR/src

# openmpi
export LD_LIBRARY_PATH=$CHAMPS_DIR/dependencies/openmpi-1.8.4/install/lib:$LD_LIBRARY_PATH
export PATH=$CHAMPS_DIR/dependencies/openmpi-1.8.4/install/bin:$PATH

# hdf5
export LD_LIBRARY_PATH=$CHAMPS_DIR/dependencies/hdf5-1.8.14/install/lib:$LD_LIBRARY_PATH
export PATH=$CHAMPS_DIR/dependencies/hdf5-1.8.14/install/include:$PATH
export CPATH=$CHAMPS_DIR/dependencies/hdf5-1.8.14/install/include:$CPATH

# parmetis/metis
export CPATH=$CHAMPS_DIR/dependencies/parmetis-4.0.3/metis/install/include:$CPATH
export CPATH=$CHAMPS_DIR/dependencies/parmetis-4.0.3/install/include:$CPATH
export LD_LIBRARY_PATH=$CHAMPS_DIR/dependencies/parmetis-4.0.3/metis/install/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$CHAMPS_DIR/dependencies/parmetis-4.0.3/install/lib:$LD_LIBRARY_PATH

# petsc
export PETSC_ARCH=arch-linux2-c-debug
export PETSC_DIR=$CHAMPS_DIR/dependencies/petsc-3.6.4

export LD_LIBRARY_PATH=$CHAMPS_DIR/dependencies/petsc-3.6.4/arch-linux2-c-debug/lib:$LD_LIBRARY_PATH
export PATH=$CHAMPS_DIR/dependencies/petsc-3.6.4/bin:$PATH
export CPATH=$CHAMPS_DIR/dependencies/petsc-3.6.4/include:$CPATH
export CPATH=$CHAMPS_DIR/dependencies/petsc-3.6.4/arch-linux2-c-debug/include:$CPATH

# karma
export KARMA_BUILD_DIR=$CHAMPS_DIR/tools/karma/utilities/build
export FEM_SRC_DIR=$CHAMPS_DIR/tools/karma/utilities/src/fem
export CPATH=$CHAMPS_DIR/tools/karma/utilities/include:$CPATH
export KARMA_UTIL_PATH=$CODE_DIR/tools/karma/utilities
export KARMA_EXEC_PATH=$CODE_DIR/tools/karma
export CPATH=$KARMA_EXEC_PATH/utilities/include:$CPATH
export LD_LIBRARY_PATH=$KARMA_EXEC_PATH/utilities/lib:$LD_LIBRARY_PATH
