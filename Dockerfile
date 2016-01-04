FROM debian:jessie


RUN apt-get update && apt-get install -y \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    vlc \
    --no-install-recommends

RUN apt-get install -y \
    python \
    --no-install-recommends


ENV HOME /home/vlc
RUN useradd --create-home --home-dir $HOME vlc \
    && chown -R vlc:vlc $HOME \
    && usermod -a -G audio,video vlc

WORKDIR $HOME
USER vlc

ADD capture.py   /home/vlc/capture.py
ADD vlcclient.py   /home/vlc/vlcclient.py
ADD launchvlc.sh   /home/vlc/launchvlc.sh