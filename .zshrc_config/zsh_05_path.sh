# postgres用
export PGDATA=/usr/local/var/postgres
export ARCHFLAGS="-arch x86_64"

# yarn用
export PATH="$PATH:`yarn global bin`"

# coreutils用
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# local bin用
export PATH="$HOME/.local/bin:$PATH"

# brew用
eval "$(/opt/homebrew/bin/brew shellenv)
