This repo has implemented PAL support


GV-USB2 Linux Driver
====================

A linux driver for the IO-DATA GV-USB2 SD capture device.

Using gstreamer to start video:
-----------------------------

`gst-launch-1.0 -e v4l2src device=/dev/video0 ! 'video/x-raw' ! videoconvert ! glimagesink`

to set standard
`v4l2-ctl -d /dev/video0 --set-standard=pal/ntsc`

or in `modprobe.d` add confignfile with parameters, e.g.

`gvusb.conf:`

`usbtv`

`gvusb2-sound index=2`

`gvusb2-video standard=pal`
`
