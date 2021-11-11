#! /bin/bash

/bin/echo -e "$(cat allgreen.echo)" | socat - udp-datagram:192.168.1.255:56700,broadcast
notify-send "New block has been mined!" "$1" -t 5000
/bin/echo -e "$(cat allgreen.echo)" | socat - udp-datagram:192.168.1.255:56700,broadcast

sleep 1

/bin/echo -e "$(cat allwhite.echo)" | socat - udp-datagram:192.168.1.255:56700,broadcast
/bin/echo -e "$(cat allwhite.echo)" | socat - udp-datagram:192.168.1.255:56700,broadcast
