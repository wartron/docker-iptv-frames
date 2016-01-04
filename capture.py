from vlcclient import VLCClient
vlc = VLCClient("::1")
vlc.connect()



stream = "http://nhkwglobal-i.akamaihd.net/hls/live/222714/nhkwglobal/index_1180.m3u8"


vlc.add(stream)