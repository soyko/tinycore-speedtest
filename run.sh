#!/usr/bin/env bash
# Oleg Soyko
# 25/06/2020

# Download speedtest.net Linux 32bit tar gip file and save it as speedtest.tgz in current directory.
wget -O speedtest.tgz https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-i386-linux.tgz
# Extract the  speedtest.tgz file into local directory.
tar zxvf speedtest.tgz
# Make /etc/ssl/certs folder as root on the install.
sudo mkdir -p /etc/ssl/certs
# Download ssl certificates so speedtest.net app can run, saving the file as ca-certificates.crt inside of the above created folder.
sudo wget -O /etc/ssl/certs/ca-certificates.crt https://curl.haxx.se/ca/cacert.pem
# Run the speedtest CLI app with verbose output stating what server was selected and what the latency to each was in testing.
./speedtest --selection-details
