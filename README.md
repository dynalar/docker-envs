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

1. Make sure Docker/Docker-CE is installed.

2. Next, set up any necessary conf.d files for your project.
You may choose to use the templates that are in there for laravel projects, or use something else.

3. Once you have your hostnames, copy and paste the `hosts.example.txt` file to a normal `hosts.txt` file, and put them in there line by line.

4. Once everything is set up, run `make build` to build your docker compose environment. Everything will be set up for you.