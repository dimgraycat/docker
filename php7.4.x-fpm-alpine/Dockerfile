FROM php:7.4.13-fpm-alpine3.12

RUN apk --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata

RUN apk add --update --no-cache \
        autoconf \
        gcc \
        g++ \
        make \
        oniguruma-dev \
        icu-dev git \
        unzip \
        zlib-dev \
        libxml2-dev \
        libmemcached-dev \
        curl-dev \
    && pecl install memcached \
    && pecl install redis \
    && pecl install xdebug \
    && docker-php-ext-install \
        mbstring \
        intl \
        curl \
        xml \
        json \
        simplexml \
        pdo \
        pdo_mysql \
    && docker-php-ext-enable \
        mbstring \
        intl \
        curl \
        xml \
        json \
        simplexml \
        pdo \
        pdo_mysql \
        memcached \
        redis \
        xdebug
