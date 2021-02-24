# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
  source /etc/profile.d/autojump.zsh
# Path to your oh-my-zsh installation.
  export ZSH=/home/vega/.oh-my-zsh
#eval "$(starship init zsh)"
#(cat ~/.cache/wal/sequences &)
#echo "
#   Yb      .dP            db
#   88    dP            db    db
#   88
#   88 d88b d88b     Ybaaaaaaaaad8
#   88P   8Y   8b    .dP   dP   88
#   88    8P   88    88   88    88
#   88  .dP  .dP     Y8   Y8   .88
#   8888888888888b.   Y88P8Y88PY88
#                               88
#                               88
#                               Y8.
#          bd 38°3238
#"
#echo ""
#echo " "
#pwd
#echo "Welcome Back Vega Deftwing..."

function cd {
    # actually change the directory with all args passed to the function
    builtin cd "$@"
    # if there's a regular file named "cd.sh"...
    if [ -f "cd.sh" ] ; then
        # display its contents
       ./cd.sh
    fi
}

function timer() {
  total=$1
  for ((i=total; i>0; i--)); do sleep 1; printf "Time remaining $i secs \r"; done
  echo -e "\a"
}

function rstatus() {
  find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)'
}

function geti3 {
	currentws=$(i3-msg -t get_workspaces \
	| jq '.[] | select(.focused==true).name' \
	| cut -d"\"" -f2 | cut -d":" -f1)
	if [ $currentws = "1" ]; then
    echo "⎧sudo pacman -F to id package by binary"
    echo "⎪sudo reflector -c us -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist\033[0m"
    echo "⎪sudo mount -o remount,size=16G,noatime /tmp to expand /tmp"
    echo "⎪journalctl -b -1 to get previous boot information"
    echo "⎩borgmatic to update backups"
	duf
	hr
	elif [ $currentws = "2" ]; then	
	  cd ~/git/local
    echo "⎧Valgrind to check program for leaks and other errors"
    echo "⎪Strace runs the specified command until it exits.  It intercepts and records the system calls"
    echo "⎪\twhich are called by a process and the signals which are re‐ceived by a process"
    echo "⎪Code . to open current working directory in VSCode"
    echo "⎪Hexyl to open hex viewer"
    echo "⎪perf record --call-graph dwarf -o perf.data ./myprogram --> Hotspot"
    echo "⎪clang-tidy --fix/--fix-errors to find some problems, similarly 'scan-build -V make/gcc -flags' to run"
    echo "⎪\t a clang based static analyzer"
    echo "⎩\tAlso, be aware of compile flags like --O3, -march -ffast-math, etc."
    hr
  elif [ $currentws = "3" ]; then	
	  cd ~/git/local
    echo "⎧Valgrind to check program for leaks and other errors"
    echo "⎪Strace runs the specified command until it exits.  It intercepts and records the system calls"
    echo "⎪\twhich are called by a process and the signals which are re‐ceived by a process"
    echo "⎪Code . to open current working directory in VSCode"
    echo "⎪Hexyl to open hex viewer"
    echo "⎪perf record --call-graph dwarf -o perf.data ./myprogram --> Hotspot"
    echo "⎪clang-tidy --fix/--fix-errors to find some problems, similarly 'scan-build -V make/gcc -flags' to run"
    echo "⎪\t a clang based static analyzer"
    echo "⎩\tAlso, be aware of compile flags like --O3, -march -ffast-math, etc."
    hr
  elif [ $currentws = "4" ]; then
    echo "⎧Waifu2x-converter-cpp to scale art"
    echo "⎪"
    echo "⎪"
    echo "⎪"
    echo "⎩"
    hr
  elif [ $currentws = "5" ]; then	
    echo "⎧tmines -f to play Minesweeper"
    echo "⎪"
    echo "⎪"
    echo "⎪"
    echo "⎩"
    hr
  elif [ $currentws = "6" ]; then	
	  cd ~/git/local/openg2
    git status
    hr
    echo "⎧typora to edit .md files, mdcat  to view .md files"
    echo "⎪evince to view PDFS"
    echo "⎪optipng to optimize png files, jpegoptim to optimize jpeg"
    echo "⎪"
    echo "⎩"
    hr
  elif [ $currentws = "7" ]; then	
	  ncmpcpp
    hr
  elif [ $currentws = "8" ]; then	
    cd Telegram\ Desktop
  elif [ $currentws = "9" ]; then	
		curl -s "wttr.in/$1?m1"
  elif [ $currentws = "10" ]; then	
		echo "P2P MANAGMENT"
  elif [ $currentws = "11" ]; then	
		echo "EMBEDED/ELECTRONICS"
	fi
}

geti3

PATH="$PATH:/home/.cargo/bin:/mnt/data/FloatingProgs"

# Alises
alias cb="git branch | fzf | sed 's/\* //g' | xargs -I '{}' git checkout {}"
alias pen="xinput map-to-output $(xinput | grep 'Tablet Monitor Pen Pen (0)' | awk -F '=' '{print $2}' | cut -f 1) HDMI-A-0"
#alias diff='diff-so-fancy'
alias ping='prettyping'
#alias t='python2 ~/t.py --task-dir ~/tasks --list tasks'
alias tw="timew"
alias t="task"
alias ta="task add"
alias thp="task add priority:H"
alias cat="bat"
alias a="alsamixer"
alias h="htop"
alias n="ncmpcpp"
alias ipconfig="ifconfig"
alias irc="irssi"
alias pia="cd /opt/pia && ./run.sh"
alias dirs="dirs -v"
alias i="nano ~/notes"
alias fd="fd -H"
alias gpp="g++"
alias leds="socat -t 0 - UDP:192.168.1.119:49161"
#Adjust Krita to not use 4k scaling, as it messes up tablet input
alias krita="QT_AUTO_SCREEN_SCALE_FACTOR=0 krita"
alias xournalpp="GDK_SCALE=1 QT_AUTO_SCREEN_FACTOR=0 xournalpp" 
# Echo stuff about this session
echo -n "Interface "
echo -n $$
echo " initalized @ $(date)"
# Current ToDo with t.py https://github.com/sjl/t
#echo "t:︷"
#t | column
# Print system usage
#echo "ps:︷"
#ps -a | awk 'NR>1 {print$1" "$4}' | columnd
#cat -p /proc/loadavg
#free -h | awk 'NR<3'

#ADB aliasses
alias mdroid="adbfs ~/droid"
alias udroid="fusermount -u ~/droid"


#Print Information about term control & extra utils
hr
echo "⎧ctrl-z to bg process, fg to resume, jobs -l or ps -a to see jobs"
echo "⎪pushd/popd & dirs to use path stack ⎪ cd - to last dir ⎪ history, and !№ to run that cmd"
echo "⎪ctrl-c/d to kill ⎪ ctrl-l to clearscrn ⎪ ctrl-u to clrline" 
echo "⎩ctrl-left/right to nav args ⎪ expansion with mv /path/meh.{md,txt}"
echo "Extra Utils:"
echo "⎧autojump (j), lsd/exa (mapped to ls,lss), bat (mapped to cat), (hr) for a line, (reptyr) to grab process"
echo "⎪(tldr) for a shorter man page, (fltrdr) for fast reading, prettyping (replaces ping), (\033[1mrg\033[0m) for ripgrep"
echo "⎪(fd) a simpiler alt to find, (fzf) for fuzzy-find stdin or cd, (ncdu) for du,"
echo "⎪(\033[1mentr\033[0m) for fs monitoring, (t) for tasks, (noti) term->notification, (progress) for mon progress"
echo "⎪(\033[1mbr\033[0m) for broot ls+cd alternative"
echo "⎩\033[1mctrl+r\033[0m binding to access history via resh, \033[1mcb\033[0m to change current git branch"
#screenfetch
#task calendar
#timew week
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gnzh"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git thefuck lol colorize archlinux wd)
#eval $(thefuck --alias)

source $ZSH/oh-my-zsh.sh

#kopy() { a=$(cat); curl -X POST -s -d "raw:$a" http://kopy.io/documents | awk -F '"' '{print "http://kopy.io/"$4}'; }

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias lss="exa --group-directories-first -la --git --extended"
alias ls="lsd -la"
export PATH=/home/vega/.local/bin:$PATH

[ -f ~/.resh/shellrc ] && source ~/.resh/shellrc

#source /home/vega/.config/broot/launcher/bash/brautoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/bin/bitcomplete bit
