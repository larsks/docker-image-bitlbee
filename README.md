This is [bitlbee][] 3.6 based on Fedora 32. It includes [libpurple][] plugins
for...

- Facebook
- Hangouts
- Slack
- Telegram

...and the contents of the `plugin-pack`.

[bitlbee]: https://www.bitlbee.org/
[libpurple]: https://developer.pidgin.im/wiki/WhatIsLibpurple

## Example

    docker run  -d --name bitlbee --restart always \
      -v bitlbee_data:/bitlbee-data \
      -p 6667 larsks/bitlbee

## Configuration

- `BITLBEE_CONFIG`

  Path to bitlbee configuration file (e.g. `/etc/bitlbee/bitlbee.conf`)

- `BITLBEE_STATEDIR`

  Path to writable directory for bitlbee state (e.g. `/bitlbee-data`)

- `BITLBEE_DAEMONINTERFACE`

  Address on which bitlbee will listen (e.g. `127.0.0.1`)

- `BITLBEE_DAEMONPORT`

  Port on which bitlbee will listen (e.g. `6667`)
