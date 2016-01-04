#!/bin/bash

STREAM="http://nhkwglobal-i.akamaihd.net/hls/live/222714/nhkwglobal/index_1180.m3u8"

OUT_PATH="/home/vlc/out/."
FRAME_SKIP=300


vlc "$STREAM" --noaudio --video-filter=scene --vout=dummy --scene-ratio=300 --scene-path="$OUT_PATH"

