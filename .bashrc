#######################################################################################
# execute tmux with bash shell and read .tmux.config from custom location
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux -f ~/setup/.tmux.conf
fi

# for environment-modules package
source /etc/profile.d/modules.sh
module use --append /home/monal/setup/modulefiles

# vimrc location
export MYVIMRC=~/setup/.vimrc

alias wdc='cd ~/Documents/code/bitcart'
