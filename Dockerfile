# Hier wären die Änderungen für den Hotfix 4711

Vom Masterbranch (HEAD) war:
# 2. Fix durch Kollegen im Docker file

Vom Branch feature-f13-Docker war:
# Feature f13 hier eingebaut ....

# 2. Feature docker file.....


Ohne Änderungen war der Rest:
ARG DOCKER_BASE
FROM $DOCKER_BASE

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get --no-install-recommends install -yq git cmake build-essential \
  libgl1-mesa-dev libsdl2-dev \
  libsdl2-image-dev libsdl2-ttf-dev libsdl2-gfx-dev libboost-all-dev \
  libdirectfb-dev libst-dev mesa-utils xvfb x11vnc \
  libsdl-sge-dev python3-pip

RUN python3 -m pip install --upgrade pip setuptools psutil

COPY . /gfootball
RUN cd /gfootball && python3 -m pip install .
WORKDIR '/gfootball'
