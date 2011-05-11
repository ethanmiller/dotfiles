# CLI aliases
alias vserver='~/bin/edit-server.pl & '
alias ls='ls -pG'
alias lr=listr
alias py=bpython
alias nowdate='date +%Y%m%d%H%M'
alias jmeter='/usr/local/jakarta-jmeter-2.3.4/bin/jmeter'
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

# constants
py=$(python -c "import sys; print '.'.join(map(str, sys.version_info[:2]))")
site_pkg=/Library/Python/$py/site-packages
repos=~/Projects
#myesip='192.168.1.101' # ES Office
myesip='localhost' # General
lhost="${myesip}:8000"
djadmin="${site_pkg}/django/bin/django-admin.py"
# settings file constants
settings_ca='--settings=es.django.settings_ca'
settings_bce='--settings=es.django.settings_bce'
settings_nvp='--settings=es.django.settings_nvp'
settings_cainstantrebates='--settings=es.django.settings_cainstantrebates'
settings_csi='--settings=csi_reporting_site.local_settings'
# settings file aliases
alias settca='export DJANGO_SETTINGS_MODULE=es.django.settings_ca'
alias settbce='export DJANGO_SETTINGS_MODULE=es.django.settings_bce'

# cdpath switching
alias cdper='export CDPATH=.:~:$repos/er_trunk/py_site-package/:$repos/er_trunk/py_site-package/django/apps/er'
alias cdpcsi='export CDPATH=.:~:$repos/csi_trunk'

# repository switching
alias switchdjangooldforms='sudo rm $site_pkg/django ; sudo ln -s $repos/django_oldforms/django $site_pkg/django'
alias switchdjangotrunk='sudo rm $site_pkg/django ; sudo ln -s $repos/django_trunk/django $site_pkg/django'
alias switchestrunk='sudo rm $site_pkg/es ; sudo ln -s $repos/er_trunk/py_site-package/ $site_pkg/es'

# run projects
alias runlocaler='switchdjangooldforms;switchestrunk;$djadmin runserver $settings_ca $lhost'
alias cp_runlocaler='switchdjangooldforms;switchestrunk;$djadmin runcherrypy $settings_ca $lhost'
alias cp_runlocalbce='switchdjangooldforms;switchestrunk;$djadmin runcherrypy $settings_bce $lhost'
alias runlocalnvp='switchdjangooldforms;switchestrunk;$djadmin runserver $settings_nvp $lhost'
alias runlocalcair='switchdjangooldforms;switchestrunk;$djadmin runserver $settings_cainstantrebates $lhost'
alias runlocalcsi='switchdjangotrunk;python $repos/csi/csi_reporting_site/manage.py runserver $settings_csi $lhost'
alias runlocalbce='switchdjangooldforms;switchestrunk;$djadmin runserver $settings_bce $lhost'

# shells
alias dbshellca='$site_pkg/django/bin/django-admin.py dbshell $settings_ca'
alias dbshellbce='$site_pkg/django/bin/django-admin.py dbshell $settings_bce'
alias shellca='$site_pkg/django/bin/django-admin.py shell_plus $settings_ca'
alias shellbce='$site_pkg/django/bin/django-admin.py shell $settings_bce'
alias shellcair='$site_pkg/django/bin/django-admin.py shell $settings_cainstantrebates'
alias shellnvp='$site_pkg/django/bin/django-admin.py shell $settings_nvp'
alias shellcsi='$site_pkg/django/bin/django-admin.py shell $settings_csi'

# utilities
alias resetpasswdca="$site_pkg/django/bin/django-admin.py set_fake_passwords $settings_ca --password 'p'"
alias resetpasswdnvp="$site_pkg/django/bin/django-admin.py set_fake_passwords $settings_nvp --password 'p'"
alias catchmail='python -m smtpd -n -c DebuggingServer $myesip:1025'
alias pg_transfer='$repos/er_trunk/py_site-package/util/pgtransfer.py'
alias reloaderbce="cd ~/Projects/tmp/ && pg_transfer -d er-bce -h 69.20.113.167 -U django --ssh-user django"
alias wrk='cd ~/Projects/er_trunk/py_site-package/django/'
