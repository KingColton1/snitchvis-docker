# syntax=docker/dockerfile:1

FROM python:3-bullseye
# FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy

# ENV DISPLAY :99
ENV QT_QPA_PLATFORM offscreen

# add better mirror with some packages we need
RUN echo "deb http://ftp.us.debian.org/debian sid main" > /etc/apt/sources.list 

RUN apt update && apt install -y \ 
    libgl1 \
    # libc6 \
    python3-pip \
    # python3-pyqt5 \
    python3-pyqt6 \
    # xvfb \
    # x11vnc \
    git \
    # python3-xdg
    libxcb-xinerama0 \
    libxcb-cursor0

RUN git clone --depth=1 https://github.com/tybug/snitchvisbot.git /app

WORKDIR /app

RUN pip3 install -r requirements.txt

RUN echo "exec cd /app && python3 main.py" > ~/.xinitrc && chmod +x ~/.xinitrc

# COPY --from=ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy /root /
# RUN  mkdir -p /root/defaults
# RUN echo "cd /app && python3 main.py" > /root/defaults/autostart

RUN apt-get clean && \
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

# CMD [ "xvfb-run", "-a", "python3", "main.py"]
# CMD ["xv11vnc", "-create", "-forever"]
CMD ["python3", "main.py"]