# CLI aliases
alias vserver='~/bin/edit-server.pl & '
alias ls='ls -pG'
alias lr=listr
alias py=bpython
alias nowdate='date +%Y%m%d%H%M'
alias vi=/Applications/MacVim.app/Contents/MacOS/Vim
alias vit="/Applications/MacVim.app/Contents/MacOS/Vim -c 'CommandT'"
alias cynkd='rsync -urv millere@ethanmiller.name:cynk/* ~/cynk/'
alias cynku='rsync -urv ~/cynk/* millere@ethanmiller.name:cynk/'
alias fmdiff='svn diff --diff-cmd=/Users/millere/bin/fmdiff'
alias scpresume="rsync --partial --progress --rsh=ssh"
alias whatismyip="wget -q -O - http://whatismyip.com/automation/n09230945.asp"
function listr(){
    ls -pGt "$@" | head
}
function psg(){
	ps -A | egrep "$1|PID" | grep -v grep
}
