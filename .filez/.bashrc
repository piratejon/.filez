
export PATH=$PATH:/home/js/.cabal/bin:/opt/android-sdk/tools:/opt/android-sdk/platform-tools/:/home/js/.gem/ruby/2.1.0/bin:/home/js/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/diamond/3.1_x64/bin/lin64/:/usr/local/diamond/3.1_x64/ispfpga/bin/lin64/

set -o vi

export CFLAGS="-g3 -Wall -std=c99 -pedantic"

export LESS=-FiXSR

export GS_FONTPATH=/usr/share/texmf-dist/fonts/type1/public/amsfonts/cm

export PS1='\[\e[1;33m\][\u@\h \W]\$\[\e[0m\] '

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# terminal multiplexer aliases
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new -s'

# cli email aliases
alias mutt-pj='LOCAL_CONFIG=piratejon.com /usr/bin/mutt'
alias mutt-gmail='LOCAL_CONFIG=gmail /usr/bin/mutt'
alias mutt-uco='LOCAL_CONFIG=uco /usr/bin/mutt'
alias mutt-krylya='LOCAL_CONFIG=krylya.org /usr/bin/mutt'

# #winning aliases
alias vg='valgrind --tool=memcheck --num-callers=40 --leak-check=full --leak-resolution=high --show-reachable=yes --track-origins=yes -v --log-file=vg.%p'

# compiling aliases
alias mc='make clean'
alias mt='make test'
alias m='make'

# git
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gd='git diff'
alias ga='git add'
alias gl='git log'
# thanks to piisalie for glr!
alias glr=" git --no-pager log --graph --abbrev-commit --date=relative -10 --all --pretty='tformat:%C(yellow)%h%Creset -%C(red)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"

# battery status!
alias bs='bc <<< "scale=4;`cat /sys/class/power_supply/BAT0/energy_now` / `cat /sys/class/power_supply/BAT0/energy_full`"'

# random linux stuff
alias dt='dmesg | tail'

#source /usr/share/chruby/chruby.sh
#RUBIES+=(/usr)
