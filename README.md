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
      -v /var/lib/bitlbee:/var/lib/bitlbee \
      -p 6667 larsks/bitlbee
