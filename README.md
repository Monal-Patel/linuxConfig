# modulefiles

## add the following to the .bashrc
BASHRC_CONFIG_DIR=~/setup
if [ -f "$BASHRC_CONFIG_DIR/.bashrc" ]; then
    . "$BASHRC_CONFIG_DIR/.bashrc"
fi
