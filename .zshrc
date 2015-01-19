#
# Prompt
#
autoload colors
colors
PROMPT="%n@%m%# "
RPROMPT="%B%{${fg[red]}%}[%~]%{${reset_color}%}%b"

#
# History
#
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

#
# Completion
#
autoload -U compinit
setopt complete_aliases
compinit

#
# config
#
for conf in $HOME/.zshrc_config/zsh_*; do
    source ${conf};
done
