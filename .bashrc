#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias vim=nvim

alias mux='pgrep -vx tmux > /dev/null && \
        tmux new -d -s delete-me && \
        tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
        tmux kill-session -t delete-me && \
        tmux attach || tmux attach'


if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    source /usr/share/git/completion/git-prompt.sh
fi

# All names
# PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \[\e[1;31m\]$(__git_ps1 "(%s)") \[\e[0m\]\$ '

# Just machine name
# PS1='\[\e[1;32m\]\h \[\e[1;34m\]\w \[\e[1;31m\]$(__git_ps1 "(%s)") \[\e[0m\]\$ '

# PS1='\[\e[1;32m\]\h \[\e[1;34m\]\w \[\e[1;31m\]$(__git_ps1 "(%s)")\[\e[0m\]\n\$ '



PS1='\[\e[1;32m\]\h \[\e[1;94m\]\w$(__git_ps1 " \[\e[0;34m\]git:(\[\e[1;31m\]%s\[\e[0;34m\])")\[\e[0m\]\n\$ '


# Nothing
# PS1='\[\e[1;34m\]\w \[\e[1;31m\]$(__git_ps1 "(%s)") \[\e[0m\]\$ '

PROMPT_DIRTRIM=1

# # Arch latest news
# if [ "$PS1" ] && [[ $(ping -c1 www.google.com 2>&-) ]]; then
# 	# The characters "£, §" are used as metacharacters. They should not be encountered in a feed...
# 	echo -e "$(echo $(curl --silent https://www.archlinux.org/feeds/news/ | sed -e ':a;N;$!ba;s/\n/ /g') | \
# 		sed -e 's/&amp;/\&/g
# 		s/&lt;\|&#60;/</g
# 		s/&gt;\|&#62;/>/g
# 		s/<\/a>/£/g
# 		s/href\=\"/§/g
# 		s/<title>/\\n\\n\\n   :: \\e[01;31m/g; s/<\/title>/\\e[00m ::\\n/g
# 		s/<link>/ [ \\e[01;36m/g; s/<\/link>/\\e[00m ]/g
# 		s/<description>/\\n\\n\\e[00;37m/g; s/<\/description>/\\e[00m\\n\\n/g
# 		s/<p\( [^>]*\)\?>\|<br\s*\/\?>/\n/g
# 		s/<b\( [^>]*\)\?>\|<strong\( [^>]*\)\?>/\\e[01;30m/g; s/<\/b>\|<\/strong>/\\e[00;37m/g
# 		s/<i\( [^>]*\)\?>\|<em\( [^>]*\)\?>/\\e[41;37m/g; s/<\/i>\|<\/em>/\\e[00;37m/g
# 		s/<u\( [^>]*\)\?>/\\e[4;37m/g; s/<\/u>/\\e[00;37m/g
# 		s/<code\( [^>]*\)\?>/\\e[00m/g; s/<\/code>/\\e[00;37m/g
# 		s/<a[^§|t]*§\([^\"]*\)\"[^>]*>\([^£]*\)[^£]*£/\\e[01;31m\2\\e[00;37m \\e[01;34m[\\e[00;37m \\e[04m\1\\e[00;37m\\e[01;34m ]\\e[00;37m/g
# 		s/<li\( [^>]*\)\?>/\n \\e[01;34m*\\e[00;37m /g
# 		s/<!\[CDATA\[\|\]\]>//g
# 		s/\|>\s*<//g
# 		s/ *<[^>]\+> */ /g
# 		s/[<>£§]//g')\n\n";
# fi




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/QQueke/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/QQueke/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/QQueke/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/QQueke/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
#
## <<< conda initialize <<<
#export PATH="/home/QQueke/anaconda3/bin:$PATH"

# CUDA export and LIB?! 
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib:$LD_LIBRARY_PATH

#Cuda Nsight Systems export
export PATH=/opt/cuda/nsight_systems/bin/:$PATH

#Cuda Nsight Compute export
export PATH=/opt/cuda/nsight_compute/:$PATH

# GO PATH export
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export JAVA_HOME=/usr/lib/jvm/java-23-openjdk
export PATH=$JAVA_HOME/bin:$PATH

# Check if Hyprland is not already running
if [ -z "$(pgrep -x Hyprland)" ]; then
    /home/QQueke/.config/hypr/starthypr.sh
fi

