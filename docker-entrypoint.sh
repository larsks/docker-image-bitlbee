#!/bin/sh

CFDIR=/etc/bitlbee

: ${BITLBEE_OPERPASSWORD:=$(dd if=/dev/urandom bs=1 count=20 | base64)}
: ${BITLBEE_USER:=bitlbee}
: ${BITLBEE_GROUP:=bitlbee}
: ${BITLBEE_HOSTNAME:=bitlbee}
: ${BITLBEE_DAEMONPORT:=6667}
: ${BITLBEE_CONFIGDIR:=/var/lib/bitlbee}

if [ -f "$CFDIR/bitlbee.conf.in" ] && ! [ -f "$CFDIR/bitlbee.conf" ] ; then
sed '
s|\$OPERPASSWORD|'"$BITLBEE_OPERPASSWORD"'|
s|\$HOSTNAME|'"$BITLBEE_HOSTNAME"'|
s|\$USER|'"$BITLBEE_USER"'|
s|\$DAEMONPORT|'"$BITLBEE_DAEMONPORT"'|
s|\$CONFIGDIR|'"$BITLBEE_CONFIGDIR"'|
' < "$CFDIR/bitlbee.conf.in" > "$CFDIR/bitlbee.conf"
fi

cat <<EOF

======================================================================
$(grep "^OperPassword" "$CFDIR/bitlbee.conf")
======================================================================

EOF

chown -R ${BITLBEE_USER}:${BITLBEE_GROUP} ${BITLBEE_CONFIGDIR}

exec /usr/sbin/bitlbee -nv "$@"
