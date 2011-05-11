if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias vi=/Applications/MacVim.app/Contents/MacOS/Vim
alias vit="/Applications/MacVim.app/Contents/MacOS/Vim -c 'CommandT'"
export PATH=$PATH:/opt/local/bin/:/opt/local/sbin/:/usr/local/git/bin/:/usr/local/git/man/:/usr/local/bin/:/Library/PostgreSQL/8.4/bin/
export GREP_OPTIONS='--color=auto --binary-files=without-match' GREP_COLOR='1;32'

export LSCOLORS=dxgxhxahcxbxbxdhdh
export PYTHONSTARTUP=~/.pythonrc
export HISTIGNORE='&:ls'
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
	. /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion
fi

. ~/bin/bashmarks.sh

PS1='\[\033[32m\]OSX\[\033[00m\]:\w$(__git_ps1)\$ '

