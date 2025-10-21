FROM serjs/go-socks5-proxy:latest
env PROXY_PORT="${PORT}"
CMD PROXY_PATH=$PORT /socks5
