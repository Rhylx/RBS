# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/local/searx/.local/bin
export PATH HOME TERM
. /usr/local/searx/searx-pyenv/bin/activate
export SEARX_SETTINGS_PATH="/etc/searx/settings.yml"
cd searx-src/
