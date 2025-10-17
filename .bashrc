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
source -- ~/.local/share/blesh/ble.sh
# shellcheck disable=SC2034

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return ;;
esac

# Path to the bash it configuration
BASH_IT="/home/QQueke/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location "$BASH_IT"/themes/
export BASH_IT_THEME='powerline'

# Some themes can show whether `sudo` has a current token or not.
# Set `$THEME_CHECK_SUDO` to `true` to check every prompt:
#THEME_CHECK_SUDO='true'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
#BASH_IT_REMOTE='bash-it'

# (Advanced): Change this to the name of the main development branch if
# you renamed it or if it was changed for some reason
#BASH_IT_DEVELOPMENT_BRANCH='master'

# Your place for hosting Git repos. I use this for private repos.
#GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
TODO="t"

# Set this to the location of your work or project folders
#BASH_IT_PROJECT_PATHS="${HOME}/Projects:/Volumes/work/src"

# Set this to false to turn off version control status checking within the prompt for all themes
#SCM_CHECK=true

# Set to actual location of gitstatus directory if installed
#SCM_GIT_GITSTATUS_DIR="$HOME/gitstatus"
# per default gitstatus uses 2 times as many threads as CPU cores, you can change this here if you must
#export GITSTATUS_NUM_THREADS=8

# If your theme use command duration, uncomment this to
# enable display of last command duration.
#BASH_IT_COMMAND_DURATION=true
# You can choose the minimum time in seconds before
# command duration is displayed.
#COMMAND_DURATION_MIN_SECONDS=1

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#SHORT_TERM_LINE=true
export EDITOR='nvim'
# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "${BASH_IT?}/bash_it.sh"
