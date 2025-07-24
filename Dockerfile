FROM alpine:latest

RUN apk update && apk add --no-cache \
    # base project dependencies
    php \
    composer \
    inkscape \
    # for git clone
    git \
    # pip extensions
    php-intl \
    php-tokenizer \
    php-dom \
    php-xml \
    php-xmlwriter \
    php-intl 

# set working directory
WORKDIR /var/www/html

# clone the repository
RUN git clone https://github.com/DenverCoder1/github-readme-streak-stats.git .

# fix port in composer.json
RUN sed -i "s/localhost/0.0.0.0/" composer.json

# install dependencies
RUN composer install

# start program
CMD ["composer", "start"]

