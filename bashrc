export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/local/git/man:/usr/local/share/python:/usr/local/terraform:/usr/local/vault:$PATH
export GREP_OPTIONS='--color=auto --binary-files=without-match' GREP_COLOR='1;32'
export LSCOLORS=dxgxhxahcxbxbxdhdh
export PYTHONSTARTUP=~/.pythonrc
export HISTIGNORE='&:ls'
export EDITOR=/usr/bin/vim

## GIT ##
# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
	. /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true

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
