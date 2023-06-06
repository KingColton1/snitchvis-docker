# syntax=docker/dockerfile:1

FROM python:3-bullseye

ENV QT_QPA_PLATFORM offscreen

# add better mirror with some packages we need
RUN echo "deb http://ftp.us.debian.org/debian sid main" > /etc/apt/sources.list 

RUN apt update && apt install -y \ 
    libgl1 \
    python3-pip \
    python3-pyqt6 \
    git \
    libxcb-xinerama0 \
    libxcb-cursor0

RUN git clone --depth=1 https://github.com/tybug/snitchvisbot.git /app

WORKDIR /app

RUN pip3 install -r requirements.txt

# Clean up
RUN apt-get clean && \
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

CMD ["python3", "main.py"]