export PATH=/usr/local/bin:$PATH:/usr/local/git/bin:/usr/local/git/man
export GREP_OPTIONS='--color=auto --binary-files=without-match' GREP_COLOR='1;32'
export LSCOLORS=dxgxhxahcxbxbxdhdh
export PYTHONSTARTUP=~/.pythonrc
export HISTIGNORE='&:ls'
export EDITOR=/usr/bin/vim

## GIT ##
# Set git autocompletion and PS1 integration

eval "$(fasd --init auto)"

export _Z_CMD=g
. ~/bin/z.sh

PS1='\[\033[32m\]OSX\[\033[00m\]:\w$(__git_ps1)\$ '

## Aliases ##

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.eb_aliases ]; then
    . ~/.eb_aliases
fi
