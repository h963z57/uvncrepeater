# VNC repeater

For complete info, see UltraVNC documentation : 
- https://www.uvnc.com/docs/uvnc-repeater.html 
- https://www.uvnc.com/docs/uvnc-repeater/72-usage-repeater-.html 

For run container :
> docker run --name vncrepeater -d -t -p5901:5901 -p5500:5500 h963z57/uvncrepeater:main

For moniter the logs: 
> docker logs container_name -n
