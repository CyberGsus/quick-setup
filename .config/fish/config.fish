#!/bin/fish

set -g EDITOR nvim
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"
export MANPAGER="nvim -c 'set ft=man' -"

if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end


## Functions needed for !! and !$ https://github.com/oh-my-fish/plugin-bang-bang
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

if [ "$fish_key_bindings" = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

## Fish command history
function history
    builtin history --show-time='%F %T '
end

function backup --argument filename
    cp $filename $filename.bak
end



alias ls='lsd -l --color=always'
alias la='lsd -a --color=always'
alias ll='lsd -al --color=always'
alias lt='lsd -aT --color=always'

alias please='sudo'
alias tb='nc termbin.com 9999'

source ("/usr/bin/starship" init fish --print-full-init | psub)

# vim:ft=fish
jfetch
