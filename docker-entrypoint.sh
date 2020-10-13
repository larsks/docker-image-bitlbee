#!/bin/sh

: ${BITLBEE_STATEDIR:=/bitlbee-data}
: ${BITLBEE_CONFIG:=/etc/bitlbee/bitlbee.conf}

exec /usr/sbin/bitlbee -Fnv \
	-c "${BITLBEE_CONFIG}" \
	-P "${BITLBEE_STATEDIR}/bitlbee.pid" \
	-d "${BITLBEE_STATEDIR}" \
	${BITLBEE_DAEMONINTERFACE:+-i ${BITLBEE_DAEMONINTERFACE}} \
	${BITLBEE_DAEMONPORT:+-p ${BITLBEE_DAEMONPORT}} \
	"$@"
