# CLI aliases
alias vserver='~/bin/edit-server.pl & '
alias ls='ls -pG'
alias nowdate='date +%Y%m%d%H%M'
alias vi=/usr/bin/vim
alias python=/usr/local/bin/python2
alias suvi='sudo -i vim'
alias vit="/usr/bin/vim -c 'CommandT'"
alias cynkd='rsync -urv millere@ethanmiller.name:cynk/* ~/cynk/'
alias cynku='rsync -urv ~/cynk/* millere@ethanmiller.name:cynk/'
alias fmdiff='svn diff --diff-cmd=/Users/millere/bin/fmdiff'
alias scpresume="rsync --partial --progress --rsh=ssh"
alias route="netstat -nr -f inet"
function lr {
    ls -pGt $1 | head
}
function lsto {
    echo $PWD/$1
}
