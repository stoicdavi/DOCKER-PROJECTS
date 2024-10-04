# A simple docker project that pings a specified url/ip address
### To create the image
- docker build -t pinger .
### Run the containers
- docker run --rm pinger
- docker run --rm -e host=facebook.com
## This will help you to ping the facebook web

## Publicahing the image into the docker registry
- Head to https://hub.docker.com/ with a browser and click the Sign Up link.

- Create an account with the Docker ID you wish. For the rest of this solution, we’ll suppose it is learnbook, but you can replace it with your own.

- The following commands will push the pinger image onto your docker hub repository.
    -- docker tag jsparam learnbook/pinger
    -- docker login -u learnbook -p <your-password>
    -- docker push learnbook/pinger

## Once this has been push to the docker registry, 
- use the following command to pull the image in a different environment
   -- docker pull learnbook/pinger
   -- docker images list # to check whether the images has been pulled
   -- run the image- docker run --rm -it learnbook/pinger