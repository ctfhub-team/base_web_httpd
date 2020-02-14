FROM php:7.3-apache
LABEL Organization="CTFHUB" Author="L1n3 <yw9381@163.com>"

COPY _files /tmp/

# 安装环境
RUN mv /tmp/sources.list /etc/apt/sources.list &&\
    apt update &&\
    apt install -y vim net-tools htop wget

# 设置
RUN echo "syntax on\nsetpaste" > /root/.vimrc &&\
    mv /tmp/docker-entrypoint /usr/local/bin/docker-entrypoint &&\
    mv /tmp/000-default.conf /etc/apache2/sites-available/000-default.conf &&\
    mv /tmp/flag.sh /flag.sh &&\
    chown -R www-data:www-data /var/www/html &&\
    chmod +x /usr/local/bin/docker-entrypoint  /flag.sh &&\
    rm -rf /tmp/*

WORKDIR /var/www/html
EXPOSE 80
ENTRYPOINT ["/bin/bash", "-c", "docker-entrypoint"]
CMD ["/bin/bash", "-c", "docker-entrypoint"]