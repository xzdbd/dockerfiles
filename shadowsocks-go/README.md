# shadowsocks-go

## Intro

[Shadowsocks-go](https://github.com/shadowsocks/shadowsocks-go) is a lightweight tunnel proxy which can help you get through firewalls. It is a port of shadowsocks.

## Setup

Command line options can override settings from configuration files.

-p server_port 
-k password
-m aes-128-cfb
-t timeout

Use ENV SERVER_PORT, PASSWORD, METHOD, TIMEOUT to determine the parameters.