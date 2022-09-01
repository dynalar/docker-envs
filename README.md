# Docker ENVs

Some of my personal, frequently used docker environments for development. This does not follow the traditional structure
of containerizing every app that I work on, but it gives me all of the necessary environments to work on any project I want locally. Feel free to fork this and add/remove whatever containers you want. There are default configs for a basic web server and databases.

There is a directory called projects/code, feel free to put your code in there so it syncs up with the containers.

## Current Services
  - nginx latest
  - php-fpm/php 8.1
  - MySQL latest
  - Redis latest

### Usage

Make sure Docker/Docker-CE is installed. It's as easy as going into the Docker directory and doing

```sh
$ docker-compose up --build
```