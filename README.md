# SnitchVisBot Dockerized for Windows

Docker for [SnitchVisBot](https://github.com/tybug/snitchvisbot/).

This repo is a fork of Huskydog9988's snitchvis-docker using latest version of SnitchVisBot instead of the old version used in Huskydog9988's snitchvis-docker. Intended to keep the bot up to date and easier to install without having to create a database manually. If you prefer creating database manually or older version of the bot, use Huskydog9988's snitchvis-docker.

In this Windows Support branch, it only support to use .\ dynamic path in Windows instead of ./ in Unix (Linux/Macs), allowing Windows users to simply run this Docker without having to tinker. Other than that, this is exactly same version as master branch.

## Usage

Prerequisites:

- [Docker Desktop App](https://www.docker.com/get-started/) (Comes with Docker command line | **Get AMD64 version for Windows, it supports Intel and AMD CPUs. ARM64 is for ARM-based CPUs, you likely don't have that.**)
OR
- Docker CLI for Windows

If this is your first time using Docker, we recommend getting Docker Desktop App because it offer very user friendly UI for you to be able to use right away. There are many tutorials and guides on the internet (YouTube, Docker Documentations, etc) to learn more about using Docker Desktop App.

Run (using Docker Desktop App):

- Before we touch Docker Desktop App, create a new file called `config.py`. Don't worry if your computer doesn't have Python installed, you can simply edit it using Notepad or other text editor.
- Copy entire of config.py from [this template](https://github.com/tybug/snitchvisbot/blob/master/config.example.py).
  - Fill out that is required: `TOKEN`, `TESTING = False`, and `AUTHOR_ID` (your user ID). Leave everything else alone.
- Your config.py is ready to be used! Let's move over to the Docker Desktop App.

- Open Docker Desktop App
- Click Terminal at bottom-right of the app (or just open Window's Command Line/Terminal)
- Run this command to pull Docker container into your computer: `docker pull ghcr.io/kingcolton1/snitchvis-docker-windows:sha-278e6e5`
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

---

Run (using terminal):

- Clone this repo using windows-support brnach: `git clone -b windows-support --single-branch https://github.com/KingColton1/snitchvis-docker.git`
- Go to snitchvis-docker folder: `cd snitchvis-docker`
- Create the `config.py` file: `nano config.py` or other text editor you prefer to use
  - Add in all the config you want, please refer to [the template](https://github.com/tybug/snitchvisbot/blob/master/config.example.py).
- Run `docker compose up -d` or `docker-compose up -d`
  - As soon as you run above command, the `snitchvis.db` file will be created automatically.
- Profit
