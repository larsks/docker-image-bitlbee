This is a simple [bitlbee][] image.  It also contains the 
[Facebook MQPP module][fb].

## Example

    docker run  -d --name bitlbee --restart always \
      -v /var/lib/bitlbee:/var/lib/bitlbee \
      --restart=always -p 6667 larsks/bitlbee

[bitlbee]: https://www.bitlbee.org/
[fb]: https://github.com/jgeboski/bitlbee-facebook

