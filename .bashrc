# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#       . /etc/bashrc
#fi

_uid=`id -u`

if [ $_uid = '0' ]
   then
        PS1="\u@\h # "
   else
        PS1="\u@\h $ "
fi

alias rm="hostname;pwd;rm -i"

PATH=$PATH:$HOME/bin:/sbin:/usr/sbin:/usr/local/bin
LANG=C

export PATH
export LANG

#HISTTIMEFORMAT='## %Y-%m-%d %T ## '
