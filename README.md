# SnitchVisBot Dockerized

Docker for [SnitchVisBot](https://github.com/tybug/snitchvisbot/).

This repo is a fork of Huskydog9988's snitchvis-docker using latest version of SnitchVisBot instead of the old version used in Huskydog9988's snitchvis-docker. Intended to keep the bot up to date and easier to install without having to create a database manually. If you prefer creating database manually or older version of the bot, use Huskydog9988's snitchvis-docker.

## Usage

Prerequisites:

- Docker
- Docker Compose

If this is your first time using Docker, we recommend run this convinence script as it will install all necessary Docker tools including compose:

`curl -sSL https://get.docker.com/ | CHANNEL=stable bash`.

Otherwise go through manual installation if you prefer that way.

Run:

- Clone this repo: `git clone https://github.com/KingColton1/snitchvis-docker.git`
- Go to snitchvis-docker folder: `cd snitchvis-docker`
- Create the `config.py` file: `nano config.py` or other text editor you prefer to use
  - Add in all the config you want, please refer to [the template](https://github.com/tybug/snitchvisbot/blob/master/config.example.py).
- Run `docker compose up -d` or `docker-compose up -d`
  - As soon as you run above command, the `snitchvis.db` file will be created automatically.
- Profit
