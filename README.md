


    time docker build -t wartron/iptv-frames .


    docker run -t wartron/iptv-frames bash

    docker run -t wartron/iptv-frames vlc "http://nhkwglobal-i.akamaihd.net/hls/live/222714/nhkwglobal/index_1180.m3u8" --noaudio --video-filter=scene --vout=dummy --scene-path="."



    docker run -it $(pwd)/out:/home/vlc/out wartron/iptv-frames bash