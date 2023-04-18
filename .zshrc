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
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' insert-tab false
setopt complete_aliases
setopt auto_param_slash
setopt auto_menu
setopt auto_param_keys

#
# Prompt
#
export GIT_PS1_SHOWCOLORHINTS=1
git_prompt_sh=/usr/local/etc/bash_completion.d/git-prompt.sh
if [ -e $git_prompt_sh ]; then
    cp -f $git_prompt_sh ~/.git-prompt.sh
    source ~/.git-prompt.sh
    precmd () { __git_ps1 "%c%f" " $ " " [%s]" }
else
    PS1='%c%f \$ '
fi

#
# brew
#
eval "$(/opt/homebrew/bin/brew shellenv)"

#
# config
#
for conf in $HOME/.zshrc_config/zsh_*; do
    source ${conf};
done

