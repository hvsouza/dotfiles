# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
PATH="$HOME/.cargo/bin${PATH:+:${PATH}}"
export PATH="${HOME}/.emacs.d/bin:${PATH}"
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=50000
HISTFILESIZE=50000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# for expanding tab
shopt -s direxpand


# Prevents ctrl+d from closing terminal
set -o ignoreeof

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# prevent Ctrl-s from freezing terminal
stty -ixon

export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
alias myemacs="emacsclient -n"
# alias myemacs="emacsclient -n -a emacs"

alias myvim='vim --servername SERVER --remote'
alias startvim='vim --servername SERVER'

source ~/Documents/root_6.26.04/root_install/bin/thisroot.sh
alias root="root -l"
alias sudo="sudo "


alias ls="exa -l --color=always --group-directories-first"
ulimit -s unlimited

# alias myclass='root -e ".L /home/henrique/Dropbox/APC_Paris/Root/cold_box_analysis/class/MYCODES.h"'
alias myclass="source ~/Dropbox/APC_Paris/Root/cold_box_analysis/class/load_my_class.sh"


alias python="python3"
alias qtcreator="~/Qt/Tools/QtCreator/bin/qtcreator"
alias cppwd='echo -n $( pwd ) | xclip -sel c'

# for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
# make sure you use command
# config config --local status.showUntrackedFiles no

alias ncdu="ncdu --color dark"

export CODES="/home/henrique/Dropbox/APC_Paris/Root/cold_box_analysis/class"

export jan2024="/home/henrique/Documents/ADC_data/coldbox_data/January2024run"
export april2024="/home/henrique/Documents/ADC_data/coldbox_data/April2024run"
export protoHD="/home/henrique/Documents/ADC_data/ProtoDUNE_HD"

# for sarching forward with ctrl+t
bind "\C-t":forward-search-history


compress_pdf(){

    fileinput=''
    fileoutput='output.pdf'
    funcname=$FUNCNAME
    compfact='ebook'
    Help(){
        echo "Usage: $funcname \"input.pdf\" \"output.pdf\" \"compression\""
        echo "input.pdf:   the name of the file to be compressed"
        echo "output.pdf:  the name (optional). DONT USE THE SAME NAME!"
        echo "compression: the compression to be used (optinal) "
        echo "             screen: lower quality, smaller size. (72 dpi) "
        echo "             ebook: for better quality, but slightly larger pdfs. (150 dpi)"
        echo "             prepress: output similar to Acrobat Distiller "Prepress Optimized" setting (300 dpi)"
        echo "             printer: selects output similar to the Acrobat Distiller "Print Optimized" setting (300 dpi)"
        echo "             default: selects output intended to be useful across a wide variety of uses, possibly at the expense of a larger output file"
    }

	if [ ! -z "$1" ]; then
        if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
            Help
            return 0
        fi
        fileinput=$1
	fi
	if [ ! -z "$2" ]; then
        fileoutput=$2
	fi

	if [ ! -z "$3" ]; then
        compfact=$3
	fi

    eval "gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/$compfact -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$fileoutput $fileinput"
}

# for lxplus
lxplusID=118461
export VNC_DISPLAY=$((1 + $lxplusID%65535))
export VNC_PORT=$(($VNC_DISPLAY+5900))


