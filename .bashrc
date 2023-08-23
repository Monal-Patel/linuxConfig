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
alias wda='cd ~/Documents/code/amrsolver'

alias zaratan='ssh mpatel38@login.zaratan.umd.edu'

alias paraview='/media/monal/main/software/paraview/bin/paraview'
alias visit='/media/monal/main/software/visit/bin/visit'
alias jabref='/media/monal/main/software/jabref/bin/JabRef'

alias fastmake='make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make -j 4;make'

alias vtune='source /opt/intel/oneapi/vtune/2023.1.0/env/vars.sh && sudo sysctl -w kernel.yama.ptrace_scope=0 && /opt/intel/oneapi/vtune/2023.1.0/bin64/vtune-gui'

alias scode1='{ IFS= read -r d && grep -Hrni "$d" /media/monal/main/code/bitcart1/src/navier_stokes_newest/*; } <<<'
