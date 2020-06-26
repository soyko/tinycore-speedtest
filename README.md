# tinycore-speedtest
Speedtest.net setup in base TinyCore

There are times when I need to do something inside of a base tinycore instance for work where I don't have speedtest available.
I'm told to use iperf, but it's not the best beacuse the carrier doesn't always give us a server to test against.

Made this so I can just have a one stop shop to use this as needed.

Run this script with the below command after you configure DNS.
To add DNS, use this command;
sudo echo "nameserver 8.8.8.8" >> /etc/resolv.conf


wget -O - https://raw.githubusercontent.com/soyko/tinycore-speedtest/master/run.sh | sh
