if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    for D in `find $HOME/.anyenv/envs -type d -d 1`
    do
        export PATH="$D/shims:$PATH"
    done
fi
