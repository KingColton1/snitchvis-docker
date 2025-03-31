# SnitchVisBot Dockerized

Docker for [SnitchVisBot](https://github.com/tybug/snitchvisbot/).

This repo is a fork of Huskydog9988's snitchvis-docker using latest version of SnitchVisBot instead of the old version used in Huskydog9988's snitchvis-docker. Intended to keep the bot up to date and easier to install without having to create a database manually. If you prefer creating database manually or older version of the bot, use Huskydog9988's snitchvis-docker.

If you are looking for Windows support, [take a look in windows-support branch](https://github.com/KingColton1/snitchvis-docker/tree/windows-support?tab=readme-ov-file).

## Usage (for Linux-based servers or other type of computers)

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

## Usage (for Docker Desktop App on Windows, Macs, and Linux)

**This instruction is focused on using Docker Desktop App in Windows. This should be same way for Mac and Linux users; the only difference is your computer's file path, which is, you need to pay attention on your computer's file path. You can follow everything else below.**

Prerequisites:

- [Docker Desktop App](https://www.docker.com/get-started/)
(Comes with Docker command line | **Get AMD64 version for Windows, it supports Intel and AMD CPUs. ARM64 is for ARM-based CPUs, you likely don't have that. If you are a Mac user, be sure to choose correct CPU architecture because they provide two versions; Apple Silicon and Intel Chip. Check your computer specs to be sure.**)

If this is your first time using Docker, we recommend getting Docker Desktop App because it offer very user friendly UI for you to be able to use right away. There are many tutorials and guides on the internet (YouTube, Docker Documentations, etc) to learn more about using Docker Desktop App.

Run (using Docker Desktop App):

- Before we touch Docker Desktop App, create a new file called `config.py`. Don't worry if your computer doesn't have Python installed, you can simply edit it using Notepad or other text editor.
- Copy entire of config.py from [this template](https://github.com/tybug/snitchvisbot/blob/master/config.example.py).
  - Fill out that is required: `TOKEN`, `TESTING = False`, and `AUTHOR_ID` (your user ID). Leave everything else alone.
- Your config.py is ready to be used! Let's move over to the Docker Desktop App.

- Open Docker Desktop App
- Click Terminal at bottom-right of the app (or just open Window's Command Line/Terminal)
- Run this command to pull Docker container into your computer: `docker pull ghcr.io/kingcolton1/snitchvis-docker:v27`
  - This will appear in the Images tab in your Docker Desktop App when it is done pulling everything that is needed to run.
- Go to Images tag, your first image should appear assuming this is your first time using it.
- Click Run button (Arrow symbol) like this:
![image](https://github.com/user-attachments/assets/2d4cdf16-8b0a-47bc-b71e-7a1be4125780)

- Click Optional Settings and name your Container "Snitchvis" or "Snitchvis Bot". Whichever suits you best.
- In Volumes section, **THIS IS VERY IMPORTANT! OTHERWISE THE CONTAINER WILL NOT BE ABLE TO FIND CONFIG.PY AND FAIL TO RUN!**
  - Host Path should be the location where `config.py` at. Easiest way is just click 3 dots to open File Explorer and find a folder where your `config.py` at. However, the Docker Desktop App only care about folder and not the file itself, so you need to add `config.py` at the end of the file path. For example: `C:\Users\(USER)\Desktop\MyConfigFolder\config.py`, not `C:\Users\(USER)\Desktop\MyConfigFolder\` after you select a folder.
  - Container Path should be `/app/config.py:ro`, this is required and leave that alone.
- Once everything is done, click Run and a successful login + running should look like this:
![image](https://github.com/user-attachments/assets/1a258daa-009a-443a-9119-d27065985fc6)

You have successfully set up a Discord Bot in your Docker container!
