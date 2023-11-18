# syntax=docker/dockerfile:1

FROM python:3.11-bookworm

ENV QT_QPA_PLATFORM offscreen

RUN apt update && apt install -y \ 
    libgl1 \
    python3-pip \
    python3-pyqt6 \
    git \
    libxcb-xinerama0 \
    libxcb-cursor0 \
    ffmpeg

RUN git clone --depth=1 -b timestamps https://github.com/huskydog9988/snitchvisbot.git /app

WORKDIR /app

RUN pip3 install -r requirements.txt

# Clean up
RUN apt-get clean && \
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

CMD ["python3", "main.py"]
