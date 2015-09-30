FROM fedora

RUN dnf -y install \
	bitlbee \
	iproute \
	; dnf clean all

RUN rm -f /etc/bitlbee/bitlbee.conf
COPY bitlbee.conf.in /etc/bitlbee/bitlbee.conf.in

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
