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

# Size of your container maters
- When you create an image, you want it to be as small as possible for several reasons:

  -- Reduce pull and push times
  -- Use a minimum amount of space in the Registry
  -- Use a minimum amount of space on the machines that will run the containers
  -- Use a minimum amount of space on the machine that creates the image

# To reduce the size
-  avoid COPY instructions that are too broad. 
     --- eg. COPY . .
- Try to be as precise as possible.
    -- e,g COPY ./Project/src/*.ts ./src
## Base Image size
- use base images that have a smaller variant

## Restart Mode
- docker run -d -p 80 --restart always nginx
- docker run -d -p 80 --restart unless-stopped nginx
## Monitoring
- docker stats
# Reclaiming disk space
- This is how disc space is wasted unknowingly
   -- Stopped containers that were not removed by using the --rm switch on the docker run command or using the docker rm command once they are stopped.
   -- Unused images: images that are not referenced by other images or containers.
   -- Dangling images: images that have no name. This happens when you docker build an image with the same tag as before, the new one replaces it and the old one becomes dangling.
   -- Unused volumes.

## To reclaim you disk space
- Most commands ask for an interactive confirmation, but if you want to run them unattended you can add the -f switch.
  -- Here are the commands you can run to remove the items that you don’t need:
  --- docker container prune -f
  --- docker volume prune -f
  --- docker image prune -f
### to remove all unsed images
- docker image prune -all