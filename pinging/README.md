# A simple docker project that pings a specified url/ip address
### To create the image
- docker build -t pinger .
- docker run --rm pinger
- docker run --rm -e host=facebook.com
## This will help you to ping the facebook web