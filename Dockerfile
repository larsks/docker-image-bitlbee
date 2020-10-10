FROM fedora:32

RUN dnf -y install 'dnf-command(copr)'
RUN dnf -y copr enable ktdreyer/purple-slack
RUN dnf -y install \
	bitlbee \
	iproute \
	bitlbee-otr \
	purple-facebook \
	purple-hangouts \
	purple-mattermost \
	purple-plugin_pack \
	purple-slack \
	purple-telegram \
	; dnf clean all
RUN chmod -R a+rx /etc/bitlbee

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

USER bitlbee
