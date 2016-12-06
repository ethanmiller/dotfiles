# CLI aliases
alias vserver='~/bin/edit-server.pl & '
alias ls='ls -pG'
alias nowdate='date +%Y%m%d%H%M'
alias vi=/usr/local/bin/nvim
alias python=/usr/local/bin/python2
alias suvi='sudo -i vim'
alias vit="vi -c 'CtrlP'"
alias cynkd='rsync -urv millere@ethanmiller.name:cynk/* ~/cynk/'
alias cynku='rsync -urv ~/cynk/* millere@ethanmiller.name:cynk/'
alias fmdiff='svn diff --diff-cmd=/Users/millere/bin/fmdiff'
alias scpresume="rsync --partial --progress --rsh=ssh"
#alias route="netstat -nr -f inet"
alias fixdns="sudo killall -HUP mDNSResponder"
#alias fixdns="sudo discoveryutil mdnsflushcache;sudo discoveryutil udnsflushcaches;sudo discoveryutil udnscachestats | grep 'Cached records'; sudo discoveryutil mdnscachestats | grep 'Cached records'"
#alias fixdns="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist; sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist"
alias tmux="TERM=screen-256color-bce tmux"
alias fina="find . -name"
alias vw=/usr/bin/view
function lr {
    ls -pGt $1 | head -n 20
}
function lsto {
    echo $PWD/$1
}
function ipi {
    curl ipinfo.io/$1
}
