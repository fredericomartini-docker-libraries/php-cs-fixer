FROM php:7.2.0-cli
MAINTAINER Frederico Martin <fredmalmeida@gmail.com>

RUN apt-get update && apt-get install -y libbz2-dev
RUN docker-php-ext-install bz2

RUN curl -L  https://cs.symfony.com/download/php-cs-fixer-v2.phar -o php-cs-fixer
RUN mv php-cs-fixer /usr/local/bin/php-cs-fixer
RUN chmod +x /usr/local/bin/php-cs-fixer

RUN mkdir -p /app
WORKDIR /app
