# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias vim=nvim

alias ebashrc='nvim ~/.bashrc'

alias sbashrc='source ~/.bashrc'

alias fvim='nvim $(fzf -m --preview="bat --color=always {}")'

alias grep='grep --color=auto'

alias egrep='egrep --color=auto'

alias fgrep='fgrep --color=auto'

alias getenv='printenv | grep -i'

alias df='df -h'

alias dusage='du -sh *>/dev/null'

alias cmkclean='cd .. && rm -rf build'

alias cmkbuild='mkdir -p build && cd build && cmake ..'

alias make='make -j $(nproc)'

alias mux='pgrep -vx tmux > /dev/null && \
        tmux new -d -s delete-me && \
        tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
        tmux kill-session -t delete-me && \
        tmux attach || tmux attach'


if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    source /usr/share/git/completion/git-prompt.sh
fi

PS1='\[\e[1;32m\]\u \[\e[1;94m\]\w$(__git_ps1 " \[\e[0;34m\]git:(\[\e[1;31m\]%s\[\e[0;34m\])")\[\e[0m\]\n\$ '

PROMPT_DIRTRIM=1

# Ida
export PATH=$PATH:/opt/ida-free

# GO PATH export
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export JAVA_HOME=/usr/lib/jvm/java-23-openjdk
export PATH=$JAVA_HOME/bin:$PATH

# Check if Hyprland is not already running
if [ -z "$(pgrep -x Hyprland)" ]; then
    /home/QQueke/.config/hypr/starthypr.sh
fi

. "$HOME/.cargo/env"

export FZF_DEFAULT_COMMAND='find . -type f'

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

export ROCM_PATH=/opt/rocm
export HSA_OVERRIDE_GFX_VERSION=10.3.0

export LD_LIBRARY_PATH=/home/QQueke/.local/lib:$LD_LIBRARY_PATH
eval "$(fzf --bash)"

ulimit -n 64000

export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"

export PATH="$PATH:/home/QQueke/.local/bin"
# source -- ~/.local/share/blesh/ble.sh
