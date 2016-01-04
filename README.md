



The new plan is to have the container spin up a headless vlc and a python app, that will interface with vlc and sit on a pub/sub worker queue







    time docker build -t wartron/iptv-frames .


    docker run -it -v $(pwd)/out:/home/vlc/out wartron/iptv-frames bash


start vlc

    ./launchvlc.sh


    python capture.py