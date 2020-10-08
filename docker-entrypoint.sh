#!/bin/sh

: ${BITLBEE_CONFIGDIR:=/var/lib/bitlbee}

chown -R ${BITLBEE_USER}:${BITLBEE_GROUP} ${BITLBEE_CONFIGDIR}

exec /usr/sbin/bitlbee -Fnv "$@"
