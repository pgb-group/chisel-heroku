FROM heroku/heroku:22-build AS builder
RUN curl -sSL https://github.com/jpillora/chisel/releases/download/v1.11.3/chisel_1.11.3_linux_amd64.gz | zcat > /bin/chisel
RUN chmod +x /bin/chisel
USER heroku
EXPOSE 5000
CMD chisel server --auth $CHISEL_AUTH --socks5 --reverse
