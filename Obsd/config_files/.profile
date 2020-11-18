# $OpenBSD: dot.profile,v 1.9 2010/12/13 12:54:31 millert Exp $
#
# sh/ksh initialization

PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/X11R6/bin:/usr/local/sbin:/usr/local/bin
export PATH
: ${HOME='/root/'}
export HOME
umask 022
export PS1='[\[$(tput bold )\]\u\[$(tput sgr0)\] : \[$(tput bold)\]\W\[$(tput sgr0)\]] > '
export EDITOR='vi'
case "$-" in
*i*)    # interactive shell
	if [ -x /usr/bin/tset ]; then
		if [ X"$XTERM_VERSION" = X"" ]; then
			eval `/usr/bin/tset -sQ '-munknown:?vt220' $TERM`
		else
			eval `/usr/bin/tset -IsQ '-munknown:?vt220' $TERM`
		fi
	fi
	;;
esac

abduco -A remote_session
