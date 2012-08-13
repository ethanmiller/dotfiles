# CLI aliases
alias vserver='~/bin/edit-server.pl & '
alias ls='ls -pG'
alias nowdate='date +%Y%m%d%H%M'
alias vi=/Applications/MacVim.app/Contents/MacOS/Vim
alias suvi='sudo -i vim'
alias vit="/Applications/MacVim.app/Contents/MacOS/Vim -c 'CommandT'"
alias cynkd='rsync -urv millere@ethanmiller.name:cynk/* ~/cynk/'
alias cynku='rsync -urv ~/cynk/* millere@ethanmiller.name:cynk/'
alias fmdiff='svn diff --diff-cmd=/Users/millere/bin/fmdiff'
alias scpresume="rsync --partial --progress --rsh=ssh"
alias upslog="find . -name upstream_ca_django.log -exec rm {} \;"
alias route="netstat -nr -f inet"
function svnclear {
    for mod in $(svn st | grep -e '^M\|^A\|^D' | awk '{ print $2 }'); do svn revert $mod; done
}
function lr {
    ls -pGt $1 | head
}
function lsto {
    echo $PWD/$1
}
