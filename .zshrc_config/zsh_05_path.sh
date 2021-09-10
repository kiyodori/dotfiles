# postgres用
export PGDATA=/usr/local/var/postgres
export ARCHFLAGS="-arch x86_64"

# yarn用
export PATH="$PATH:`yarn global bin`"

# coreutils用
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

