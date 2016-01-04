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

ADD capture3.sh   /home/vlc/capture3.sh
ADD capture.py   /home/vlc/capture.py