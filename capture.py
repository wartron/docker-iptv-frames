
import time
from vlcclient import VLCClient


stream = "http://nhkwglobal-i.akamaihd.net/hls/live/222714/nhkwglobal/index_1180.m3u8"

sleepdelay = 3

vlc = VLCClient("::1")
vlc.connect()


print "connected to vlc ", vlc.server_version


print "adding stream", stream
print vlc.add(stream)


print "sleeping", sleepdelay
time.sleep(sleepdelay)


print "snapshot 1"
print vlc.snapshot()

print "sleeping", sleepdelay
time.sleep(sleepdelay)


print "snapshot 2"
print vlc.snapshot()

print "sleeping", sleepdelay
time.sleep(sleepdelay)


print "snapshot 3"
print vlc.snapshot()


print "stop"
print vlc.stop()