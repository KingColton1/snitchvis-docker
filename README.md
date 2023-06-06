# SnitchVisBot Dockerized

Docker for [SnitchVisBot](https://github.com/tybug/snitchvisbot/).

## Usage

Prerequisites:

- Docker
- Docker Compose
- A running xserver (this is needed because snitchvisbot uses qt6 for some reason)

Run:

- Clone this repo
- Create the `config.py` file
  - Add in all the config shit you want
- Create the `snitchvis.db` file
  - Make sure to manually create all the tables because snitchvis is dogshit
- Run `docker-compose up -d`
- Profit
