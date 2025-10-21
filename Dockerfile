FROM serjs/go-socks5-proxy:latest
CMD chisel server --auth $CHISEL_AUTH --socks5 --reverse
