# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

#
# History
#
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history
function history-all { history -E 1 }

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

