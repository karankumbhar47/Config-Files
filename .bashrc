
# ~/.bashrc
#
# append to the history file, don't overwrite it
shopt -s histappend

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PYTHONPATH=$PYTHONPATH:/home/karan/.local/lib/python3.10/site-packages

alias ls='ls --color=auto'
alias nv='nvim'
alias to='nvim /home/karan/waste/todo.md'
alias cfi='nvim ~/.config/i3/config'
alias cfb='nvim ~/.config/i3status/config'
alias cfn='nvim ~/.config/nvim/init.lua'
alias cfa='nvim ~/.config/alacritty/alacritty.yml'
alias ps='sudo pacman -S'
alias pr='sudo pacman -R'
alias br='nvim .bashrc'
alias c='clear'
alias rmdir='rm -rf'

PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#everytime execute neofetch whenever open terminal
if [ "$(command -v neofetch)" ]; then
neofetch
fi

#to make background transparent
#picom -b
#but this will happens in alacritty.yml
export PATH=~/.local/bin/:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
