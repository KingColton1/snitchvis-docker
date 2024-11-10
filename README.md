# SnitchVisBot Dockerized

Docker for [SnitchVisBot](https://github.com/tybug/snitchvisbot/).

## Usage

Prerequisites:

- Docker
- Docker Compose

If this is your first time using Docker, we recommend run this convinence script as it will install all necessary Docker tools including compose:

`curl -sSL https://get.docker.com/ | CHANNEL=stable bash`.

Otherwise go through manual installation if you prefer that way.

Run:

- Clone this repo: `git https://github.com/KingColton1/snitchvis-docker.git`
- Create the `config.py` file
  - Add in all the config you want, please refer to [the template](https://github.com/tybug/snitchvisbot/blob/master/config.example.py).
- Create the `snitchvis.db` file
  - Run `docker compose up -d` or `docker-compose up -d` (Note that `docker-compose` is a deprecated command from docker-compose package. Use `docker compose` instead.)
- Profit
